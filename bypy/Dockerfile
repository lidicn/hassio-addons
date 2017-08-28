
FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

RUN apk add --no-cache --virtual .build-deps \
 	build-base \
	git \
 && apk add --no-cache \
        ca-certificates \
		jq \
        py-gst1 \
        py-pip \
        python \
	    python-dev \
 && pip install -U pip \
 && pip install \
        bypy \
 && apk del .build-deps	
	

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]