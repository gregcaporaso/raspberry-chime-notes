# Introduction

:::{tip} Are you in the right place?
:class: dropdown

This is *Raspberry Chime Notes*: very rough notes on installing the QIIME 2 Framework (Q2F) on Raspberry Pi 5.
If you're looking to get started with QIIME 2, or for general information about the project, there are better resources.

Are you looking for:
- the QIIME 2 homepage? That's [https://qiime2.org](https://qiime2.org).
- learning resources for microbiome marker gene (i.e., amplicon) analysis? See the [QIIME 2 *amplicon distribution* documentation](https://amplicon-docs.readthedocs.io).
- learning resources for microbiome metagenome analysis? See the [MOSHPIT documentation](https://moshpit.readthedocs.io).
- installation instructions, plugins, books, videos, workshops, or resources? See the [QIIME 2 Library](https://library.qiime2.org).
- general help? See the [QIIME 2 Forum](https://forum.qiime2.org)
- information about the authors? See [https://cap-lab.bio](https://cap-lab.bio).

Otherwise, if you're specifically interested in *Raspberry Chime*, you're in the right place.
Read on... 📖
:::

This is a weekend experiment focused on installing the QIIME 2 Framework on a Raspberry Pi 5 (i.e., making a Raspberry Chime).
It is organized just as rough notes: no promises that it works (i.e., "if it breaks, you get to keep both parts").

The following steps are intended to be performed on a Raspberry Pi 5 computer running Raspberry Pi OS.
`sudo` access is required.
You should have greater than ~20GB of disk space available in the location where you perform this work to ensure that you have enough space for the disk image files that will be created.

## Using `pi-gen`

### Clone `pi-gen` and install its dependencies

```shell
git clone -b raspberry-chime https://github.com/gregcaporaso/pi-gen
```

Follow the installation instructions for installing the dependencies in the top-level README (also available [here](https://github.com/gregcaporaso/pi-gen/tree/raspberry-chime?tab=readme-ov-file#dependencies)).

You can find the QIIME 2-relevant bits in the `pi-gen/stage4/42-qiime2` directory (also [here](https://github.com/gregcaporaso/pi-gen/tree/raspberry-chime/stage4/42-qiime2)).

### Create a `config` file

In your top-level `pi-gen` directory, create a file called `config`.
You can fill it in based on the information in the README ([here](https://github.com/gregcaporaso/pi-gen/tree/raspberry-chime?tab=readme-ov-file#config)).

A simple example that you can build from looks like the following:

```
IMG_NAME=raspberry-chime
PI_GEN_RELEASE="Raspberry Chime"
TARGET_HOSTNAME=raspberry-chime

LOCALE_DEFAULT=en_US.UTF-8
KEYBOARD_KEYMAP=us
KEYBOARD_LAYOUT="English (US)"
TIMEZONE_DEFAULT="America/Phoenix"
WPA_COUNTRY=US

# TODO: update the username and password
# It's a good idea to change your password the first time you log in to your
# new device so it bears no relationship to a password that you have stored in
# plain-text (i.e., the one in this file).
FIRST_USER_NAME=REDACTED - ADD YOUR OWN
FIRST_USER_PASS=REDACTED - ADD YOUR OWN
ENABLE_SSH=1
#PUBKEY_SSH_FIRST_USER=
#PUBKEY_ONLY_SSH=1
```

### Disable build stage 5, optionally

After reading about the different build stages, consider whether you want to skip any.
I skip stage5 by running the following command from the `pi-gen` directory before build:

```
touch ./stage5/SKIP ./stage5/SKIP_IMAGES
```

### Build!

From the `pi-gen` directory, run the following:

```shell
sudo ./build.sh
```

This will take a while - maybe an hour or so.

### Create image

From the top-level directory of the `pi-gen` repository, run the following command.
This will take a while (up to an hour).

Replace `/dev/sda` with the path of the SD card you're writing the image to (be sure you pick the right one - all content on that card will be overwritten).
Replace the image file name with the one your build created (it will look something like `2025-05-05-raspberry-chime.img`)

:::{tip}
Use `lsblk -p` to see the available disks.
You're looking for entries where `TYPE` is `disk`.
Use the `SIZE` column as a guide to find the SD card you want to write to.
If in doubt, run `lsblk -p` before attaching the drive, and then run it again after attaching the drive.
Compare the results to see what new disk became available when you attached the drive.
:::

```shell
sudo rpi-imager \
 --cli work/raspberry-chime/export_image/2025-05-05-raspberry-chime.img \
 /dev/sda
```

## Try it out

If all of the above commands completed successfully, you should be able to boot a Raspberry Pi 5 with the newly imaged SD card.
Have fun!

## License

 *Raspberry Chime* (©2025) by [Greg Caporaso](https://cap-lab.bio) is licensed under [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en).

[^change-your-password]: It's a good idea to change your password the first time you log in to your new device so it bears no relationship to a password that you have stored in plain-text (i.e., the one in your `my.options` file).