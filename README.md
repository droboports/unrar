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

## Help support the apps

If you like the repositories, or are using any of the apps from this site, please consider becoming a patreon or making a donation to support our efforts.

[![Patreon](http://www.patreon.com/images/logo_emblem.png)](http://www.patreon.com/Droboports)

[![Paypal](https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KYFBRYLKSGNKA)

[![Flattr](https://api.flattr.com/button/flattr-badge-large.png)](http://flattr.com/thing/177640/DroboPorts)
