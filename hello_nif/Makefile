ERLANG_PATH:=$(shell erl -eval 'io:format("~s~n", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)
CFLAGS=-fPIC
ERLANG_FLAGS=-I$(ERLANG_PATH)
CC?=clang

ifeq ($(shell uname),Darwin)
	OPTIONS=-dynamiclib -undefined dynamic_lookup
endif

NIF_SRC=src/math_nif.c

all: compile

priv/math.so: ${NIF_SRC}
	mkdir -p priv && $(CC) $(CFLAGS) $(ERLANG_FLAGS) -shared $(OPTIONS) $(NIF_SRC) -o $@ 2>&1 >/dev/null

compile: priv/math.so
	mix compile
