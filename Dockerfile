FROM lsiobase/alpine:3.12

LABEL maintainer="causefx"

# Add local files
COPY ./ /app
WORKDIR /app

# Install packages
RUN apk add --no-cache \
	nodejs-npm \
	nodejs-current \
	&& npm install

CMD sh /app/SonarrChecker
