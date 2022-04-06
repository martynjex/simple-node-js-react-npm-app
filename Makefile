SHELL := /bin/sh
CURRENT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: build test deliver

build:
	npm install

test:
	./jenkins/scripts/test.sh

deliver:
	./jenkins/scripts/deliver.sh
	input message: 'Finished using the web site? (Click "Proceed" to continue)'
	./jenkins/scripts/kill.sh
