FROM scratch

ADD 2e496c282cf99d27d9bf4aba4d077204bd79ea263c6e680390b23c67d5bac621.tar.xz /
ADD 47add1db8dbf46888ce79b7120d456d94488c4068cc98da6be4d6bd4e7590a5f.tar.xz /
ADD 5460aa954c2a5fd4202fa7f721ee53d41cb452cfe753dec5b5864f23d304e8df.tar.xz /
ADD 571d2a77553850cf5fb40baa4c00b12cef1ee69e1cd50d0eafbe726e9d0c0545.tar.xz /
ADD 6cc6c7277fa8c2acce0469d2f774e615a24e897a374035bf55644f9b789618f5.tar.xz /
ADD 880c41f469395a518dc3c22fbcd7ce8e984e28489aa32ec42ed7ee4d20adb326.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

