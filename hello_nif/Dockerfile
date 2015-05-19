FROM msaraiva/erlang:17.5

ADD hello_nif /app/hello_nif
ADD priv/math.so /app/priv/math.so

WORKDIR /app

CMD ["/app/hello_nif"]
