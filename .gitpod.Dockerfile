FROM gitpod/workspace-full-vnc:2023-03-06-18-43-51
# FROM gitpod/workspace-full:2023-03-06-18-43-51

USER root

RUN apt-get update && apt-get -y install git build-essential libglu1-mesa-dev mesa-common-dev libxmu-dev libxi-dev libopengl-dev qtbase5-dev libxxf86vm-dev python3-pip libboost-dev libcapstone-dev

RUN apt-get update && apt-get install -y libx11-dev libxkbfile-dev \
    libsecret-1-dev libgconf-2-4 libnss3 libgrpc++1 libssh2-1 protobuf-compiler \
    && rm -rf /var/lib/apt/lists/*
