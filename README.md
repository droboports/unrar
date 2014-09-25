unrar
=====

This is a set of scripts to package a DroboApp from scratch, i.e., download sources, unpackage, compile, install, and package in a TGZ file. The `master` branch contains the Drobo5N version, the `drobofs` branch contains the DroboFS version.

## I just want to install the DroboApp, what do I do?

Check the [releases](https://github.com/droboports/unrar/releases) page. If there are no releases available, then you have to compile.

## How to compile

First make sure that you have a working cross-compiling VM. See http://www.droboports.com/setting-up-a-vm for a step-by-step description.

Log in the VM, pick a temporary folder (e.g., `~/build`), and then do:

```
git clone https://github.com/droboports/unrar.git
cd unrar
./build.sh
```

Each invocation creates a log file with all the generated output.

* `./build.sh distclean` removes everything, including downloaded files.
* `./build.sh clean` removes everything but downloaded files.
* `./build.sh package` repackages the DroboApp, without recompiling.

## Sources

* unrar: http://www.rarlab.com/rar_add.htm
