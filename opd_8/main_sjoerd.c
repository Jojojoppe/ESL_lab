#include <gst/gst.h>
#include <glib.h>
#include <stdio.h>

static gboolean
bus_call (GstBus     *bus,
          GstMessage *msg,
          gpointer    data)
{
  GMainLoop *loop = (GMainLoop *) data;

  switch (GST_MESSAGE_TYPE (msg)) {

    case GST_MESSAGE_EOS:
      g_print ("End of stream\n");
      g_main_loop_quit (loop);
      break;

    case GST_MESSAGE_ERROR: {
      gchar  *debug;
      GError *error;

      gst_message_parse_error (msg, &error, &debug);
      g_free (debug);

      g_printerr ("Error: %s\n", error->message);
      g_error_free (error);

      g_main_loop_quit (loop);
      break;
    }
    default:
      break;
  }

  return TRUE;
}


static void on_pad_added (GstElement *element,
              GstPad     *pad,
              gpointer    data)
{
  GstPad *sinkpad;
  GstElement *decoder = (GstElement *) data;

  /* We can now link this pad with the vorbis-decoder sink pad */
  g_print ("Dynamic pad created, linking demuxer/decoder\n");
  sinkpad = gst_element_get_static_pad (decoder, "sink");
  gst_pad_link (pad, sinkpad);
  gst_object_unref (sinkpad);
}

/* The appsink has received a buffer */
static GstFlowReturn new_sample (GstElement *sink) {
  GstSample *sample;

  /* Retrieve the buffer */
  g_signal_emit_by_name (sink, "pull-sample", &sample);
  if (sample) {
    /* The only thing we do in this example is print a * to indicate a received buffer */
    g_print ("*");
    gst_sample_unref (sample);
    return GST_FLOW_OK;
  }

  return GST_FLOW_ERROR;
}

int
main (int   argc,
      char *argv[])
{
  GMainLoop *loop;
  GstElement *pipeline, *source, *filter, *decoder, *sink;
  GstBus *bus;
  GstCaps *cap;
  guint bus_watch_id;

  /* Initialisation */
  gst_init (&argc, &argv);
  loop = g_main_loop_new (NULL, FALSE);


  /* Create gstreamer elements */
  pipeline = gst_pipeline_new ("video-player");
  source   = gst_element_factory_make ("v4l2src",    "webcam-source");
  filter   = gst_element_factory_make ("capsfilter", "filter");
  decoder  = gst_element_factory_make ("jpegdec",    "jpeg-decoder");
  sink     = gst_element_factory_make ("appsink",    "video-output");

  if (!pipeline || !source || !filter || !decoder || !sink) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Create gstreamer cap */
  cap = gst_caps_new_simple ("image/jpeg", 
                             "format", G_TYPE_STRING, "I420",
			     "framerate", GST_TYPE_FRACTION, 30, 1, 
			     "pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
			     "width", G_TYPE_INT, 320, 
		 	     "height", G_TYPE_INT, 240, 
			     NULL);

  /* Set up the pipeline */
  /* we set the input filename to the source element */
  g_object_set (G_OBJECT (source), "device", "/dev/video0", NULL);
  g_object_set (filter, "caps", cap, NULL);
  g_object_set (G_OBJECT (sink), "emit-signals", TRUE, NULL);
  gst_caps_unref (cap); /* Unset to avoid memory leaks */

  /* we add a message handler */
  bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
  bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
  gst_object_unref (bus);

  /* we add all elements into the pipeline */
  /* alsa-source | filter | jpeg-decoder | file-output */
  gst_bin_add_many (GST_BIN (pipeline),
                    source, filter, decoder, sink, NULL);

  /* we link the elements together */
  /* alsa-source -> filter -> jpeg-decoder -> file-output */
  gst_element_link (source, filter);
  gst_element_link_many (filter, decoder, sink, NULL);
  g_signal_connect (filter, "pad-added", G_CALLBACK (on_pad_added), decoder);
  g_signal_connect (sink, "new-sample", G_CALLBACK (new_sample), NULL);

  /* Set the pipeline to "playing" state*/
  g_print ("Now playing: appsink\n");
  gst_element_set_state (pipeline, GST_STATE_PLAYING);

  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);

  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (pipeline, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (pipeline));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

  return 0;
}
