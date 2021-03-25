.PHONY: \
	all docs

all: docs

docs: docfx/docfx.exe
	./docfx/docfx.exe docs/docfx.json

# This depends on live-server being available. Install like this (presumed
# Node.js already being available):
#
# npm install -g live-server
docs-serve:
	live-server docs/_site

docfx/docfx.exe:
	wget -qO- https://github.com/dotnet/docfx/releases/download/v2.51/docfx.zip | busybox unzip - -d docfx
	chmod +x docfx/docfx.exe
