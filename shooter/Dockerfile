FROM python:3

# Add env
ENV LANG C.UTF-8

# Setup base
RUN mkdir -p /usr/src/app /usr/src/cache
WORKDIR /usr/src/app
VOLUME /usr/src/cache
# Copy firmware
COPY subfinder/* /usr/src/app

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT ["SubFinder", "--cache-dir", "/usr/src/cache"]

CMD [ "/run.sh" ]
