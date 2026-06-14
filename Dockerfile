FROM oven/bun:debian
ARG IOSEVKA_VERSION
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yqq && \
    apt-get install --no-install-recommends -yqq curl unzip fontforge ttfautohint && \
    rm -rf /var/lib/apt/lists/*

RUN curl -fsSL -o /tmp/patcher.zip \
        https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip && \
    unzip -o /tmp/patcher.zip -d /font-patcher && \
    rm /tmp/patcher.zip

RUN curl -fsSL "https://github.com/be5invis/Iosevka/archive/v${IOSEVKA_VERSION}.tar.gz" | tar xz -C / && \
    mv "/Iosevka-${IOSEVKA_VERSION}" /iosevka && \
    cd /iosevka && bun install

WORKDIR /iosevka
