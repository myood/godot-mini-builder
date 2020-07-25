FROM bitnami/minideb:stretch
LABEL author="myoodster@gmail.com"

ADD ./install_build_dependencies.sh ./compile_godot.sh ./install_sdk_ndk.sh ./compile_android_templates.sh

RUN chmod +x ./install_build_dependencies.sh \
  && ./install_build_dependencies.sh \
  && chmod +x ./compile_godot.sh \
  && ./compile_godot.sh \
  && chmod +x ./install_sdk_ndk.sh \
  && ./install_sdk_ndk.sh \
  && chmod +x ./compile_android_templates.sh \
  && ./compile_android_templates.sh
