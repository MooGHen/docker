TMP := ''
IMAGE := heroku/heroku:20-build
BASH_COMMAND := /bin/bash

.PHONY: test shell quick publish docker test-assets
.DEFAULT: test
.NOTPARALLEL: docker test-assets

sync:
	./sbin/sync-files.sh

test: BASH_COMMAND := test/run.sh
test: docker
