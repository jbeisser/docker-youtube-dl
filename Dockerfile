FROM alpine:edge
RUN apk update && \
    apk add bash && \
    apk add ffmpeg && \
    apk add ffmpeg-libs && \
    apk add youtube-dl

ADD docker-entrypoint.sh /
ADD youtube-dl.conf /etc
VOLUME ["/yt"]
WORKDIR /yt
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["--help"]
