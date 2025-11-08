FROM debian:13.1-slim

ARG YQ_VERSION=v4.48.1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        # Core tools
        coreutils procps findutils lsb-release grep sed gawk less tree jq \
        # Network & downloads
        ca-certificates curl wget \
        # Version control
        git git-lfs \
        # Compression & archives
        zip unzip tar gzip \
        # Python
        python3 python3-pip && \
    git lfs install --system && \
    # Install yq (Go-based, from GitHub releases)
    ARCH=$(dpkg --print-architecture) && \
    curl -L "https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_${ARCH}" \
      -o /usr/local/bin/yq && \
    chmod +x /usr/local/bin/yq && \
    # Clean up
    ln -s /usr/bin/python3 /usr/local/bin/python && \
    rm -rf /var/lib/apt/lists/*
