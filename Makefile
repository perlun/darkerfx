.PHONY: \
	all docs

all: docs

docs: docfx/docfx.exe darkerfx/styles/main.css
	./docfx/docfx.exe docs/docfx.json

darkerfx/styles/main.css: darkerfx/styles/main.scss
	sass $< $(@)

docs-screenshot:
	wkhtmltoimage --crop-h 768 http://localhost:8080/articles/intro.html docs/images/darkfx-screenshots.png

# This depends on live-server being available. Install like this (presumed
# Node.js already being available):
#
# npm install -g live-server
docs-serve:
	live-server docs/_site

docfx/docfx.exe:
	wget -qO- https://github.com/dotnet/docfx/releases/download/v2.51/docfx.zip | busybox unzip - -d docfx
	chmod +x docfx/docfx.exe
