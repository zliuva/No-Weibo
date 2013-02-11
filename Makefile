export TARGET=iphone:clang

include theos/makefiles/common.mk

TOOL_NAME = noweibo
noweibo_FILES = main.m

include $(THEOS_MAKE_PATH)/tool.mk
