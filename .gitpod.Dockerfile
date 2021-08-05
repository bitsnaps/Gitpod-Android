FROM gitpod/workspace-full-vnc

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get install -y libz1 libncurses5 libbz2-1.0:i386 libstdc++6 libbz2-1.0

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio && \
    sudo apt-get update && \
    sudo apt-get install build-essential android-sdk \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-23 --no-install-recommends --yes \
        && sudo apt-get clean \
        && sudo rm -rf /var/lib/apt/lists/*
