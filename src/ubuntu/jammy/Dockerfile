FROM ubuntu-vanilla

LABEL org.opencontainers.image.source="https://github.com/ovsds-example-organizaton/docker-contrib"

COPY ./scripts /tmp/scripts
RUN chmod a+x /tmp/scripts/*.sh && \
    run-parts --regex '.*sh$' \
    --exit-on-error \
    /tmp/scripts && \
    rm -rf /tmp/scripts
