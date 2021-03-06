#include <gst/gst.h>
#include <glib.h>
#include <stdio.h>
#include <gst/app/gstappsink.h>
#include <gst/app/gstappsrc.h>
#include <string.h>

static gboolean bus_call(GstBus * bus, GstMessage * msg, gpointer data){
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

static GstFlowReturn on_new_sample_from_sink(GstElement * elt, gpointer data){
	//GstSample * sample = gst_app_sink_pull_sample(GST_APP_SINK(elt));
	g_print(".");
		//GstBuffer * buffer = gst_sample_get_buffer(sample);
		//if(buffer){
		//	GstMapInfo info;
			//gst_buffer_map(buffer, &info, GST_MAP_READ);

			//g_print("Appsink: buff recv: %u\r\n", info.data);

			//gst_buffer_unmap(buffer, &info);
		//}
		//gst_buffer_unref(buffer);
	//gst_sample_unref(sample);
	return GST_FLOW_OK;
}

int main (int argc, char * argv[]){
	GMainLoop *loop;

	gst_init(&argc, &argv);
	loop = g_main_loop_new(NULL, FALSE);

	GstElement * pipeline = gst_pipeline_new ("test-pipeline");
	g_assert(pipeline);

	GstElement * source = gst_element_factory_make("v4l2src", NULL);
	//GstElement * source = gst_element_factory_make("videotestsrc", NULL);
	g_assert(source);
	g_object_set(source, "device", argv[1], "do-timestamp", TRUE, "num-buffers", -1, "io-mode", 0, NULL);

	GstElement * source_caps = gst_element_factory_make ("capsfilter", NULL);
	g_assert(source_caps);
	g_object_set(source_caps, "caps", gst_caps_new_simple("video/x-raw",
					"format", G_TYPE_STRING, "YUY2",
					"width", G_TYPE_INT, 640,
					"height", G_TYPE_INT, 480,
					"framerate", GST_TYPE_FRACTION, 30, 1,
					NULL), NULL);

	GstElement * sink = gst_element_factory_make("appsink", NULL);
	g_assert(sink);
	g_object_set(sink, "emit-signals",  TRUE, "sync", TRUE, "drop", TRUE, "max-buffers", -1 ,NULL);
	g_signal_connect(sink, "new-sample", G_CALLBACK (on_new_sample_from_sink), NULL);

	/* we add a message handler */
	GstBus * bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
	guint bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
	gst_object_unref (bus);

	gst_bin_add_many (GST_BIN (pipeline),
					source,
					source_caps,
				   	sink, 
	NULL);

	gst_element_link_many(
					source,
					source_caps,
				   	sink, 
	NULL);

	gst_element_set_state(pipeline, GST_STATE_PLAYING);

	g_print ("Running...\n");
	g_main_loop_run(loop);

	g_print ("Returned, stopping playback\n");
	gst_element_set_state(pipeline, GST_STATE_NULL);

	g_print ("Deleting pipeline\n");
	gst_object_unref (GST_OBJECT (pipeline));
	g_source_remove (bus_watch_id);
	g_main_loop_unref (loop);

	return 0;
}
