GHC = ghc
GHCFLAGS = 
SRC = $(wildcard src/*.hs)
BIN = $(patsubst src/%.hs,%,$(SRC))

all: $(addprefix bin/, $(BIN))

bin/%: src/%.hs
	$(GHC) $(GHCFLAGS) $< -o $@

time:
	./timeSolutions.sh

clean:
	rm bin/*;
	rm src/*.hi;
	rm src/*.o;
