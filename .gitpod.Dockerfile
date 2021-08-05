FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio && \
    sudo apt-get update && \
    sudo apt-get build-essential aptitude && \
    sudo apt-get install android-sdk \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-23 --no-install-recommends --yes \
        && sudo apt-get clean \
        && sudo rm -rf /var/lib/apt/lists/*
