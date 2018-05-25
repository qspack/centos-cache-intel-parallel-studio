FROM qspack/centos-base:missing-compiler-import-v2 

COPY mirrors.yaml /root/.spack/
RUN /opt/spack/bin/spack mirror create -d mirror intel-parallel-studio@cluster.2018.1  && mv /mirror /usr/local/src/spack/mirror
