FROM rust:slim

COPY deny.toml /deny.toml
COPY start.sh /start.sh

RUN apt update && apt install -y libfindbin-libs-perl libssl-dev make && \
    cargo install cargo-deny --no-default-features

CMD ["/start.sh"]
