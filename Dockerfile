FROM alpine

COPY script.sh /bin/

RUN set -xe \
    && apk --no-cache add python2 nodejs \
    && npm install -g harp --unsafe-perm=true --allow-root \
    && chmod +x /bin/script.sh
    #&& apk add --no-cache bash git openssh yarn \
    #&& git --version && bash --version && ssh -V && npm -v && node -v && yarn -v

ENTRYPOINT /bin/script.sh
