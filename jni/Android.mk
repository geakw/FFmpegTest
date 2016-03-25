LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(ANDROID_NDK)/sources/ffmpeg-2.2.3
LOCAL_CFLAGS := -Wdeprecated-declarations
LOCAL_MODULE := videokit
ANDROID_LIB := -landroid
LOCAL_LDLIBS += -llog -ljnigraphics -lz \
				$(ANDROID_NDK)/sources/x264-android/android/arm/lib/libx264.a \
				$(ANDROID_NDK)/sources/ffmpeg-2.2.3/android/arm/lib/*.a
LOCAL_SRC_FILES := videokit/fr_enoent_videokit_Videokit.c videokit/ffmpeg.c videokit/ffmpeg_filter.c videokit/ffmpeg_opt.c videokit/cmdutils.c
LOCAL_STATIC_LIBRARIES :=libavdevice libavformat libavfilter libavcodec libwscale libavutil libswresample libpostproc
include $(BUILD_SHARED_LIBRARY)
$(call import-module,ffmpeg-2.2.3/android/arm)
