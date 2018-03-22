serve:
	hugo serve -w --verbose

install:
	brew install hugo

build:
	hugo --verbose

.PHONY: install
