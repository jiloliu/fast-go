FROM alpine:3.21.3

COPY _output/fg-apiserver /app
COPY configs/fg-apiserver.yaml /

RUN chmod +x /app

ENTRYPOINT ["/app", "-c", "fg-apiserver.yaml"]