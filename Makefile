#

LESSC = lessc
LESSCFLAGS = -x
STATIC = static
STATIC_CSS = $(STATIC)/css


all: build
	@echo "Nice."


dev: lint all


lint:
	flake8 watermains app.py


build: clean
	$(LESSC) $(LESSCFLAGS) less/watermains.less > $(STATIC_CSS)/watermains.css


clean:
	rm -rf $(STATIC_CSS)
	mkdir -p $(STATIC_CSS)


.PHONY: lint build clean
