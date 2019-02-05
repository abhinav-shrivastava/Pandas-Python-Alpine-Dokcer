ARG PYTHON_VERSION=3.6-alpine

FROM python:${PYTHON_VERSION}

# Install basic python utils and bash utils

ARG PANDAS_VERSION=0.19.2

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip3 install numpy==1.14.3 && \
    pip3 install pandas==${PANDAS_VERSION} && \
    apk del .build-deps
