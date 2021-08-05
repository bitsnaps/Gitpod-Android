FROM gitpod/workspace-full-vnc

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get install -y --no-install-recommends build-essential apt-utils

RUN sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio && \
    sudo apt-get update && \
    sudo apt-get install android-sdk \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-23 --no-install-recommends --yes \
        && sudo apt-get clean \
        && sudo rm -rf /var/lib/apt/lists/*
