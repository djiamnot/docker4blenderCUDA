FROM djpetti/ubuntu-cuda

RUN apt-get update && apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:thomas-schiex/blender && \
    apt-get update && \
    apt-get install -y blender

COPY scripts/force_gpu.py /usr/bin/

VOLUME /mount/blender
ENTRYPOINT ["/usr/bin/blender", "-P", "/usr/bin/force_gpu.py", "-b"]
