LOCAL_PATH := $(call my-dir)

OGG_INCLUDES    := $(LOCAL_PATH)/../../include
OGG_SRC		    := /../../src

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_MODULE   := libogg
LOCAL_CFLAGS   := -ffast-math -fsigned-char -O2 -fPIC -DPIC \
                  -DBYTE_ORDER=LITTLE_ENDIAN -D_ARM_ASSEM_

LOCAL_C_INCLUDES := $(OGG_INCLUDES)

LOCAL_SRC_FILES :=  \
                    $(OGG_SRC)/bitwise.c \
					$(OGG_SRC)/framing.c \

include $(BUILD_STATIC_LIBRARY)
