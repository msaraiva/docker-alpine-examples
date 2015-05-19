FROM msaraiva/erlang:17.5

RUN apk --update add erlang-sasl && rm -rf /var/cache/apk/*

ENV APP_NAME hello_phoenix
ENV PORT 4000

RUN mkdir -p /$APP_NAME
ADD rel/$APP_NAME/bin /$APP_NAME/bin
ADD rel/$APP_NAME/lib /$APP_NAME/lib
ADD rel/$APP_NAME/releases /$APP_NAME/releases

EXPOSE $PORT

CMD trap exit TERM; /$APP_NAME/bin/$APP_NAME foreground & wait
