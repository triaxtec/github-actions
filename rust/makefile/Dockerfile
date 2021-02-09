FROM rust:alpine

ENV GITHUB_WORKSPACE=""
ENV INPUT_EXTRA_DEPENDENCIES=""
ENV INPUT_RUSTUP_COMPONENTS=""
ENV INPUT_MAKEFILE_ROOT="."
ENV INPUT_MAKEFILE_TARGETS=""

RUN apk update && apk upgrade && \
    apk add make build-base

COPY start.sh /start.sh

CMD ["/start.sh"]
