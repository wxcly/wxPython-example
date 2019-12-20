FROM gitpod/workspace-full-vnc:latest

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

# Install WXPython Dependencies
RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
        freeglut3-dev \
        python3.7-dev \
        libpython3.7-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libgstreamer-plugins-base1.0-dev \
        libgtk-3-dev \
        libnotify-dev \
        libsdl2-dev \
        libwebkit2gtk-4.0-dev \
        libxtst-dev \
        libgtk2.0-dev \
    && sudo rm -rf /var/lib/apt/lists/*

# Give control back to gitpod layer
USER root