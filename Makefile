all: build test

build:
	erl -make

test:
	erl -noshell -eval 'eunit:test([{dir, \".\"}], [verbose])' -s init stop'\"\"}])'
