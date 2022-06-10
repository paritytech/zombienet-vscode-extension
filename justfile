# List available commands
_default:
  just --choose --chooser "fzf +s -x --tac --cycle"

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

install: package
	code --install-extension zombienet-extension-0.0.1.vsix
