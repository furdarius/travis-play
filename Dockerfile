FROM scratch
COPY travis-play /
ENTRYPOINT ["/travis-play"]
