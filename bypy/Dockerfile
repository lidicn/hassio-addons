
FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

RUN apk add --no-cache python-dev py-pip build-base
RUN pip install bypy
	

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
