THEOS_PACKAGE_SCHEME = roothide
TARGET := iphone:clang:16.5:15.0
ARCHS = arm64e
INSTALL_TARGET_PROCESSES = WeChat
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = FenzuReplica
FenzuReplica_FILES = FZConfig.m FZUI.m FZCore.m FZSession.m
FenzuReplica_FRAMEWORKS = UIKit QuartzCore CoreGraphics
FenzuReplica_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-arc-unsafe-retained-assign
include $(THEOS_MAKE_PATH)/tweak.mk
