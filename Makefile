FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter

.PHONY: build
build:
	${FLUTTER} pub get
	${FLUTTER} pub run build_runner build --delete-conflicting-outputs