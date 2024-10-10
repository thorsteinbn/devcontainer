FROM quay.io/almalinuxorg/almalinux:9.4

RUN dnf -y update \
    && dnf -y install \
    python3.12 \
    python3.12-pip \
    git \
    https://github.com/tofuutils/tenv/releases/download/v3.2.4/tenv_v3.2.4_386.rpm \
    && dnf clean all \
    && python3.12 -m pip install ansible ansible-lint \
    && tenv tofu install \
    && tenv tf install
