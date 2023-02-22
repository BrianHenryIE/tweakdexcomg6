TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweakdexcomg6

tweakdexcomg6_FILES = $(wildcard *.xm)
tweakdexcomg6_CFLAGS = -fobjc-arc

tweakdexcomg6_FRAMEWORKS = CoreBluetooth

include $(THEOS_MAKE_PATH)/tweak.mk
