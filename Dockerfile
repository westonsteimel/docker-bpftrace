FROM alpine:edge

RUN apk update && apk --no-cache add \
    bpftrace-tools

ENTRYPOINT ["/usr/bin/bpftrace"]

LABEL org.opencontainers.image.title="bpftrace" \
    org.opencontainers.image.description="bpftrace in Docker" \ 
    org.opencontainers.image.url="https://github.com/westonsteimel/docker-bpftrace" \ 
    org.opencontainers.image.source="https://github.com/westonsteimel/docker-bpftrace"

