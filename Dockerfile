FROM fedora
MAINTAINER "Praveen Yalagandula"

RUN dnf install -y python27
RUN dnf install -y rpm-build
