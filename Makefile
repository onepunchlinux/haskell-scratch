default: docker-integer-gmp

integer-gmp: | clean
	@docker run --rm -v $(shell pwd):/work -w /work fpco/stack-run ./copy-files.sh
	@sudo chown -R $(USER) root

docker-integer-gmp: | integer-gmp
	@tar -cC root .|docker import - haskell-scratch:integer-gmp-libstdc-libgcc

clean:
	@rm -rf root

push:
	@docker tag haskell-scratch:integer-gmp-libstdc-libgcc whitehead1415/haskell-scratch:integer-gmp-libstdc-libgcc
	@docker push whitehead1415/haskell-scratch:integer-gmp-libstdc-libgcc
	@docker tag haskell-scratch:integer-gmp-libstdc-libgcc whitehead1415/haskell-scratch:latest
	@docker push whitehead1415/haskell-scratch:latest

.PHONY: default docker-integer-gmp docker-integer-simple clean push
