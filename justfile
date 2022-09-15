export VERSION:=`cat package.json| jq -r .version`

# List available commands
_default:
  just --choose --chooser "fzf +s -x --tac --cycle"

# Show some help
help:
	just --list

# Setup tooling
setup:
	# npm install -g yo generator-code
	npm install -g vsce

# Package the extensions
package:
	vsce package

# Publish the extension
publish: package
	vsce publish

# Install the extension locally after building it
install: package
	#!/usr/bin/env bash
	echo "Installing version $VERSION"
	code --install-extension zombienet-extension-${VERSION}.vsix
