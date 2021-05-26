#include <gst/gst.h>
#include <glib.h>
#include <stdio.h>

static gboolean bus_call (GstBus * bus, GstMessage * msg, gpointer data){
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

static void on_pad_added (GstElement *element, GstPad * pad, gpointer data){
  GstPad *sinkpad;
  GstElement *decoder = (GstElement *) data;
  /* We can now link this pad with the vorbis-decoder sink pad */
  g_print ("Dynamic pad created, linking demuxer/decoder\n");
  sinkpad = gst_element_get_static_pad (decoder, "sink");
  gst_pad_link (pad, sinkpad);
  gst_object_unref (sinkpad);
}



int main (int argc, char * argv[]){
	GMainLoop *loop;

	gst_init (&argc, &argv);
	loop = g_main_loop_new (NULL, FALSE);

	GstElement * pipeline = gst_pipeline_new ("test-pipeline");
	g_assert(pipeline);

	GstElement * source = gst_element_factory_make("v4l2src", NULL);
	g_assert(source);
	g_object_set(source, "device", argv[1], NULL);

	GstElement * source_caps = gst_element_factory_make ("capsfilter", NULL);
	g_assert(source_caps);
	g_object_set(source_caps, "caps", gst_caps_new_simple("video/x-raw",
					"format", G_TYPE_STRING, "YUY2",
					"width", G_TYPE_INT, 160,
					"height", G_TYPE_INT, 120,
					"framerate", GST_TYPE_FRACTION, 30, 1, 
					NULL), NULL);

	GstElement * sink = gst_element_factory_make("filesink", NULL);
	g_assert(sink);
	g_object_set(sink, "location", "test.yuv", NULL);

	/* we add a message handler */
	GstBus * bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
	guint bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
	gst_object_unref (bus);

	gst_bin_add_many (GST_BIN (pipeline),
					source, source_caps, sink, NULL);

	gst_element_link_many(source, source_caps, sink, NULL);
	//gst_element_link(source, source_caps);
	//gst_element_link(source_caps, sink);

	gst_element_set_state (pipeline, GST_STATE_PLAYING);

	g_print ("Running...\n");
	g_main_loop_run (loop);

	g_print ("Returned, stopping playback\n");
	gst_element_set_state (pipeline, GST_STATE_NULL);

	g_print ("Deleting pipeline\n");
	gst_object_unref (GST_OBJECT (pipeline));
	g_source_remove (bus_watch_id);
	g_main_loop_unref (loop);

	return 0;
}
