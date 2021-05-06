FROM scratch

ADD 01049c43a84ff0ee1ecf6a23ccf62bdfb708ddce3838f82cf99f351129b7d178.tar.xz /
ADD 03b4bdd0fa28b020ef08c10ed95cd7492c5cda7c183589ef8beae7c88199806f.tar.xz /
ADD 18f506a70ccff9e8e1cbd91ffc46adba66a2c6935f45f72497a778a2a1bd6f0d.tar.xz /
ADD 2d9916143bf80ea6d17769e6f5a3159dd2bf7bd34f6894ded8b7cf0e34c910ff.tar.xz /
ADD c5ec8b461a50d95fd068c57cf4de7f3210cad1b2ad851ad2e6266064f63e37ff.tar.xz /
ADD ccf46bde026a7441b3f581154a3233f33d1fc78eca8732ec2fafd0803ce2984b.tar.xz /
ADD d4a5d0173d9de67116ecc8e1490fe19db29e25f5de7ab222756dc0532e19f600.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

