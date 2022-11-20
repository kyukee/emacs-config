## -*- dockerfile-image-name: "puscasu/emacs" -*-

FROM ubuntu:20.04

# Fix "Couldn't register with accessibility bus" error message
ENV NO_AT_BRIDGE=1

ENV DEBIAN_FRONTEND=noninteractive

# Basic stuff
RUN apt-get update && apt-get install -y \
        bash \
        build-essential \
        dbus-x11 \
        fontconfig \
        git \
        gzip \
        language-pack-en-base \
        libgl1-mesa-glx \
        make \
        sudo \
        tar \
        unzip && \
# Cleanup
    apt-get purge -y build-essential && \
    apt-get autoremove -y && \
    rm -rf /tmp/* /var/lib/apt/lists/* /root/.cache/*

# Emacs
RUN apt-get update && apt-get install -y software-properties-common && \
    apt-add-repository ppa:kelleyk/emacs && \
    apt-get update && apt-get install -y emacs27 && \
# Cleanup
    apt-get purge -y software-properties-common && \
    rm -rf /tmp/* /var/lib/apt/lists/* /root/.cache/*

# ENV UNAME="emacs" \
#     GNAME="emacs" \
#     UID="1000" \
#     GID="1000" \
ENV UHOME="/home/emacs" \
    WORKSPACE="/home/emacs/mount"

# RUN echo -e "${UNAME}:x:${UID}:${GID}:${UNAME},,,:${UHOME}:${SHELL}\n$(cat /etc/passwd)" > /etc/passwd && \
#     echo "${UNAME}::17032:0:99999:7:::" >> /etc/shadow

COPY config-resources README.org early-init.el init.el "/root/.emacs.d/"

WORKDIR "${WORKSPACE}"

# CMD ["bash", "-c", "emacs; /bin/bash"]
CMD ["bash", "-c", "emacs"]





# xhost +local:docker
# docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix puscasu/emacs



# docker run -it --rm --name emacs -e DISPLAY="unix$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix:ro\
#  -e DISPLAY="unix$DISPLAY"\
#  -v $HOME/.emacs.d:/home/emacs/.emacs.d\
#  -v $HOME:/home/emacs/mount\
#  puscasu/emacs
