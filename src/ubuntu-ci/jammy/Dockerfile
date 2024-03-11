FROM ubuntu

COPY ./scripts /tmp/scripts
RUN chmod a+x /tmp/scripts/*.sh && \
    run-parts --regex '.*sh$' \
    --exit-on-error \
    /tmp/scripts && \
    rm -rf /tmp/scripts

ENV PATH /root/.nvm/versions/node/v21.5.0/bin:${PATH}
ENV NODE_PATH /root/.nvm/versions/node/v21.5.0/lib/node_modules
