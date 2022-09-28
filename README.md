⚠️ 🚧 Under Active Development 🚧 ⚠️

![Zombienet](resources/zombienet_128px.png)

# zombienet extension for VsCode

This is the README for the `zombienet-extension`. It assists you writting tests using the [Zombienet](https://github.com/paritytech/zombienet) DSL.

## Usage

Create a file with the `zndsl` extension, then using the VScode panel select `Insert Snippet`. Select your snippet and press enter.
Use `TAB` to jump to the next fields.

## Requirements

For setting up easily the extension we use `just` ([repo](https://github.com/casey/just) and [book](https://just.systems/man/en/)).

Easiest way to install for, Linux, MacOS, Windows (more info [here](https://just.systems/man/en/chapter_4.html)). 

## Setup and Building package

Once `just` is installed, run the `setup` command in order to install the Visual Studio Code extension manager (or vsce).

```bash
just setup
```

Then run the `package` command in order to package the extension,

```bash
just package
```

### Install

This extension is not published yet but you may clone the repo and run:
```bash
just install
```
to install the extension in VScode.
