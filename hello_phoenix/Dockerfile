FROM msaraiva/alpine:3.1

ENV APP_NAME hello_phoenix
ENV PORT 4000

RUN mkdir -p /$APP_NAME
ADD rel/$APP_NAME/bin /$APP_NAME/bin
ADD rel/$APP_NAME/lib /$APP_NAME/lib
ADD rel/$APP_NAME/erts-6.4 /$APP_NAME/erts-6.4
ADD rel/$APP_NAME/releases /$APP_NAME/releases

EXPOSE $PORT

CMD trap exit TERM; /$APP_NAME/bin/$APP_NAME foreground & wait
