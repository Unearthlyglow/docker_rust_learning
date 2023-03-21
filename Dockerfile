FROM rust:1.61 AS builder
COPY . .
RUN cargo build --release

FROM debian:buster-slim
COPY --from=builder ./target/release/rust_docker_learning ./target/release/rust_docker_learning
CMD ["./target/release/rust_docker_learning"]


