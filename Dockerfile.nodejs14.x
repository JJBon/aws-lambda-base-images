FROM scratch

ADD 06e620ee7c825538917507ceb57320bb3b81d058d16028035fbd8f974fc1dab7.tar.xz /
ADD 1bd08bcbb0f232a383a96bdb72ac0ec9de4ad87c16d9df52abe30c268223b7ce.tar.xz /
ADD 2938dddc62e39e17f2e590df7bec4ec5153edcbd3451d99c1bc0cd4e8995ffd7.tar.xz /
ADD 4da3e5e0d68beccd0694c55c6f06bf1a4f204bc4a519d702a74b923a11d075d3.tar.xz /
ADD 6cc6c7277fa8c2acce0469d2f774e615a24e897a374035bf55644f9b789618f5.tar.xz /
ADD a5df8b4485952602d1e54fd45c026b21318379b6f79906f9958193ac31aab56d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

