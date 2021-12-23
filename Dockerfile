ARG ALPINE_BASE="3.12.9"

FROM alpine:${ALPINE_BASE}

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="docker-host" \
    org.label-schema.version=$VERSION \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/rugarci/docker-host" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.schema-version="1.0"

RUN apk --no-cache add  \
    iptables \
    libcap

COPY ./entrypoint.sh /

USER nobody

ENTRYPOINT ["/entrypoint.sh"]
