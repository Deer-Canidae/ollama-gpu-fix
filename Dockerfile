FROM nvidia/cuda:12.3.1-base-rockylinux9

WORKDIR /opt/ollama

RUN dnf up --refresh -y

RUN curl -L https://ollama.com/download/ollama-linux-amd64 -o /usr/bin/ollama
RUN chmod +x /usr/bin/ollama

ENV OLLAMA_HOST="0.0.0.0"
EXPOSE 11434/tcp

ENTRYPOINT [ "/usr/bin/ollama" ]
CMD ["serve"]