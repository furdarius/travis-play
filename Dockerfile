FROM alpine:3.7

RUN apk --no-cache upgrade && apk --no-cache add ca-certificates

COPY travis-play /usr/local/bin/travis-play

CMD ["travis-play"]

