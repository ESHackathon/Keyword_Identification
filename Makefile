.PHONY: build test
default: build

build:
	docker build -t eshackathon/keyword_identification .

test:
	-rm -rf /tmp/i3-keyword_identification
	mkdir /tmp/i3-keyword_identification
	cp test.json /tmp/i3-keyword_identification/test.json
	docker run -e LANG=C.UTF-8 --volume /tmp/i3-keyword_identification:/app/work eshackathon/keyword_identification work/test.json > /tmp/i3-keyword_identification/output.json
	@echo --- START OUTPUT ---
	@cat /tmp/i3-keyword_identification/output.json
	@echo --- END OUTPUT ---
	-rm -rf /tmp/i3-keyword_identification

shell:
	docker run -it --entrypoint=/bin/sh eshackathon/keyword_identification
