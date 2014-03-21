$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/board/generic/device.mk)

include $(SRC_TARGET_DIR)/product/emulator.mk

# Overrides
PRODUCT_NAME := CobraDroidJB
PRODUCT_MODEL := CDJB001
PRODUCT_DEVICE := goldfish
PRODUCT_MANUFACTURER := CobraDenSec
PRODUCT_LOCALES := en_US en_GB

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

# no hardware camera
USE_CAMERA_STUB := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif
endif

# Build OpenGLES emulation guest and host libraries
BUILD_EMULATOR_OPENGL := true

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

# Superuser fun.
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Additional CobraDroid feautres
PRODUCT_PACKAGES += \
    liblime \
    lime \
