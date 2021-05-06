FROM scratch

ADD 29732436601aeaa66a2b9c52c83bc6f4b83eb482b2f921744be141bb4e0f49b6.tar.xz /
ADD 5a79f7c01792640bab0594b050cc8c587812b2b70664efd2eb0696f48de306c7.tar.xz /
ADD 69bc76547266abf59d6a83b03ba62fde66300e7242d7af739709a3eade959195.tar.xz /
ADD 6cc6c7277fa8c2acce0469d2f774e615a24e897a374035bf55644f9b789618f5.tar.xz /
ADD a1dd32e36497bc380eb02bd52a16a68fffdd291923264d8dc991bd7b6ecd4069.tar.xz /
ADD dcd98f2c33134c81e875508c8c6de85a92f754e513eab942d5f10753488d9786.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

