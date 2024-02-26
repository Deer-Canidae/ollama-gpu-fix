# Ollama GPU fix
Provides a fix for GPU detection when using cotainers under certain platforms

I was having some problems with the [official Ollama image](https://hub.docker.com/r/ollama/ollama) where it wouldn't detect my GPU using podman.

This image aims to fix that problem as it did on my system

This image is built for CUDA enabled GPUs and is untested on any other hardware. Support is not planned. This is just a quickfix project for myself.

## Quickstart

To pull the image just run

```shell
podman pull docker.io/deercanidae/ollama-gpu-fix:latest
```

This is the command I personnaly use to run it and is given without any garantees. Run it at your own risk.

```shell
podman run -P --security-opt label=disable --gpus=all deercanidae/ollama-gpu-fix:latest
```