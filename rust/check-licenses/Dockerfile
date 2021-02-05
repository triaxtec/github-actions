FROM rust:alpine

#ENV GITHUB_WORKSPACE=""

COPY deny.toml /deny.toml

RUN apk update --no-cache && apk upgrade --no-cache && \
    apk add --no-cache musl-dev openssl-dev openssl-libs-static pkgconf zlib-dev perl make && \
    echo =========================== && pkg-config --libs openssl && \
    cargo install cargo-deny --no-default-features

ENTRYPOINT ["cargo"]

CMD ["deny", "check"]
