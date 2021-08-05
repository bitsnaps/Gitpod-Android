FROM gitpod/workspace-full-vnc

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get install -y libz1 binfmt-support clang-10 clang-8 clang-format-10 clang-tidy-10 clang-tools-10 \
  clang-tools-8 clangd-10 gdbserver lib32gcc1 lib32stdc++6 libbabeltrace1 \
  libc6-dbg libc6-i386 libclang-common-10-dev libclang-common-8-dev \
  libclang-cpp10 libclang1-10 libclang1-8 libdw1 libgc1c2 libllvm10 libllvm8 \
  libobjc-8-dev libobjc4 libomp-8-dev libomp5-8 libpfm4 lld-10 llvm-10 \
  llvm-10-dev llvm-10-runtime llvm-10-tools llvm-8 llvm-8-dev llvm-8-runtime

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio && \
    sudo apt-get update && \
    sudo apt-get install build-essential android-sdk \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-23 --no-install-recommends --yes \
        && sudo apt-get clean \
        && sudo rm -rf /var/lib/apt/lists/*
