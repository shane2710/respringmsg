export THEOS_DEVICE_IP = localhost
export THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

#export THEOS_DEVICE_PORT = 22

export SDKVERSION = 9.2
export TARGET = iphone:9.2
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 8.0
export ARCHS = arm64

TARGET_STRIP_FLAGS = -u -r -s /dev/null

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = respringmsg
respringmsg_FILES = Tweak.xm
respringmsg_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
