FROM bitnami/minideb:stretch
LABEL author="myoodster@gmail.com"

ADD ./install_build_dependencies.sh ./compile_godot.sh ./install_sdk_ndk.sh ./compile_android_templates.sh /root/

ENV GODOT_VERSION 3.2.2
ENV GODOT_RELEASE stable
ENV ANDROID_HOME /root/android-sdk
ENV ANDROID_NDK_VERSION 17.2.4988734
ENV ANDROID_NDK_ROOT /root/android-sdk/cmdline-tools/ndk/17.2.4988734
# For gradle (deprecated - should set it in gradle.build instead)
ENV ANDROID_NDK_HOME /root/android-sdk/cmdline-tools/ndk/17.2.4988734
ENV ANDROID_BUILD_TOOLS_VERSION 29.0.3
ENV ANDROID_PLATFORM_VERSION 29
ENV CMAKE_VERSION 3.6.4111459

RUN chmod +x /root/install_build_dependencies.sh \
  && /root/install_build_dependencies.sh \
  && chmod +x /root/install_sdk_ndk.sh \
  && /root/install_sdk_ndk.sh
  
# RUN && chmod +x /root/compile_godot.sh \
#  && /root//compile_godot.sh \
#  && chmod +x /root/compile_android_templates.sh \
#  && /root/compile_android_templates.sh
