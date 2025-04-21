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
- information about the author? See [ https://cap-lab.bio](https://cap-lab.bio).

Otherwise, if you're specifically interested in *Raspberry Chime*, you're in the right place.
Read on... 📖
:::

This is a weekend experiment focused on installing the QIIME 2 Framework on a Raspberry Pi 5.
It is organized just as rough notes: no promises that it works (i.e., "if it breaks, you get to keep both parts").

The following steps are intended to be performed on a Raspberry Pi 5 computer running Raspberry Pi OS.
`sudo` access is required.

## Clone this repository

```shell
git clone https://github.com/gregcaporaso/raspberry-chime-notes
```

Edit the `raspberry-chime-notes/rpi-image-gen/raspberry-chime/my.options` file to update the following values:
- `device_user1` : the user name you'd like to use
- `device_user1pass` : the password you'd like to use for `device_user1` [^change-your-password]

## Clone and install [`rpi-image-gen`](https://github.com/raspberrypi/rpi-image-gen)

```shell
git clone https://github.com/raspberrypi/rpi-image-gen
cd rpi-image-gen
sudo ./install_deps.sh
```

## Build

From the top-level directory of the `rpi-image-gen` repository, run the following command.
This will take a while (up to an hour).

```shell
./build.sh \
 -c raspberry-chime \
 -D $HOME/raspberry-chime-notes/rpi-image-gen/raspberry-chime/ \
 -o $HOME/raspberry-chime-notes/rpi-image-gen/raspberry-chime/my.options
```

## Create image

From the top-level directory of the `rpi-image-gen` repository, run the following command.
This will take a while (up to an hour).
Replace `/dev/sda` with the path of the SD card you're writing the image to (be sure you pick the right one - all content on that card will be overwritten).

:::{tip}
Use `lsblk -p` to see the available disks.
You're looking for entries where `TYPE` is `disk`.
Use the `SIZE` column as a guide.
If in doubt, run this command before attaching the drive, and then run it again after attaching the drive.
Compare the results to see what new disk became available when you attached the drive.
:::

```shell
sudo rpi-imager \
 --cli work/raspberry-chime/artefacts/raspberry-chime.img \
 /dev/sda
```

## Try it out

If all of the above commands completed successfully, you should be able to boot a Raspberry Pi 5 with the newly imaged SD card.
Have fun!

## License

 *Raspberry Chime* (©2025) by [Greg Caporaso](https://cap-lab.bio) is licensed under [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en).

[^change-your-password]: It's a good idea to change your password the first time you log in to your new device so it bears no relationship to a password that you have stored in plain-text (i.e., the one in this file).