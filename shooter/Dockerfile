ARG BUILD_FROM
FROM $BUILD_FROM
# Add env
ENV LANG C.UTF-8

RUN \
    apk add --no-cache --virtual .build-dependencies \
    && apk add --no-cache \
        python3 \
        jq \
    \
    && pip3 install \
        requests \
    \
    && apk del --purge .build-dependencies
# Setup base
RUN mkdir -p /usr/src/app /usr/src/cache
WORKDIR /usr/src/app
VOLUME /usr/src/cache
# Copy firmware
COPY subfinder/SubFinder.py /usr/src/app

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh



CMD [ "/run.sh" ]
