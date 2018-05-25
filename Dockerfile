ARG FROM_IMG_REGISTRY=docker.io
ARG FROM_IMG_REPO=qspack
ARG FROM_IMG_NAME="centos-base"
ARG FROM_IMG_TAG="missing-compiler-import-v2"
ARG FROM_IMG_HASH=""
FROM ${FROM_IMG_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

COPY mirrors.yaml /root/.spack/
RUN /opt/spack/bin/spack mirror create -d mirror intel-parallel-studio@cluster.2018.1  && mv /mirror /usr/local/src/spack/mirror
