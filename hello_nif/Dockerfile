FROM msaraiva/elixir:1.0.4

RUN apk update

RUN apk add gcc make libc-dev libgcc

ADD . /nif_test2

CMD ["/bin/sh"]
