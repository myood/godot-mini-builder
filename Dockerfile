FROM bitnami/minideb:stretch
LABEL author="myoodster@gmail.com"

ADD ./install_build_dependencies.sh ./compile_godot.sh ./install_sdk_ndk.sh ./compile_android_templates.sh /root/

RUN chmod +x /root/install_build_dependencies.sh \
  && /root/install_build_dependencies.sh \
  && chmod +x /root/compile_godot.sh \
  && /root//compile_godot.sh \
  && chmod +x /root/install_sdk_ndk.sh \
  && /root/install_sdk_ndk.sh \
  && chmod +x /root/compile_android_templates.sh \
  && /root/compile_android_templates.sh
