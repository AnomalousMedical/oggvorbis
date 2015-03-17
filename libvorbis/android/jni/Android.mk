LOCAL_PATH := $(call my-dir)

OGG_INCLUDES    := $(LOCAL_PATH)/../../../libogg/include
VORBIS_INCLUDES := $(LOCAL_PATH)/../../include \
	               $(LOCAL_PATH)/../../lib

VORBIS_SRC	    := /../../lib

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_MODULE   := libvorbis
LOCAL_CFLAGS   := -ffast-math -fsigned-char -O2 -fPIC -DPIC \
                  -DBYTE_ORDER=LITTLE_ENDIAN -D_ARM_ASSEM_

LOCAL_C_INCLUDES := $(OGG_INCLUDES) $(VORBIS_INCLUDES)

LOCAL_SRC_FILES :=  \
                    $(VORBIS_SRC)/analysis.c \
					$(VORBIS_SRC)/bitrate.c \
					$(VORBIS_SRC)/block.c \
					$(VORBIS_SRC)/codebook.c \
					$(VORBIS_SRC)/envelope.c \
					$(VORBIS_SRC)/floor0.c \
					$(VORBIS_SRC)/floor1.c \
					$(VORBIS_SRC)/info.c \
					$(VORBIS_SRC)/lookup.c \
					$(VORBIS_SRC)/lpc.c \
					$(VORBIS_SRC)/lsp.c \
					$(VORBIS_SRC)/mapping0.c \
					$(VORBIS_SRC)/mdct.c \
					$(VORBIS_SRC)/psy.c \
					$(VORBIS_SRC)/registry.c \
					$(VORBIS_SRC)/res0.c \
					$(VORBIS_SRC)/sharedbook.c \
					$(VORBIS_SRC)/smallft.c \
					$(VORBIS_SRC)/synthesis.c \
					$(VORBIS_SRC)/vorbisenc.c \
					$(VORBIS_SRC)/window.c \
					$(VORBIS_SRC)/vorbisfile.c \

include $(BUILD_STATIC_LIBRARY)

