#FROM rust:alpine
FROM rust:slim

#ENV GITHUB_WORKSPACE=""

COPY deny.toml /deny.toml
COPY start.sh /start.sh

RUN apt update && apt upgrade -y && \
    apt install -y libfindbin-libs-perl libssl-dev make && \
    cargo install cargo-deny --no-default-features

#RUN apk update --no-cache && apk upgrade --no-cache && \
#    apk add --no-cache musl-dev openssl-dev openssl-libs-static pkgconf zlib-dev perl make && \
#    cargo install cargo-deny --no-default-features

CMD ["/start.sh"]
