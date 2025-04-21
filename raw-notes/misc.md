# misc.md

These builds can be automated with one of the following tools:
- https://github.com/RPi-Distro/pi-gen
- https://github.com/gitbls/sdm

## zsh

- https://ohmyz.sh/

## qiime2

:::{note} shell history
:class: dropdown

```
bash Miniforge3-$(uname)-$(uname -m).sh
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh
source ~/.bashrc
conda env create -n raspberry-chime python=3.10 scipy=1.13.0 pandas=2.2.2 numpy=1.26.4
conda env create -n raspberry-chime python=3.10
exit
conda env create -n raspberry-chime python=3.10
conda create -n raspberry-chime python=3.10 scipy=1.13.0 pandas=2.2.2 numpy=1.26.4
conda activate raspberry-chime
pip install pyyaml decorator>=4,<5  tzlocal<3  python-dateutil  bibtexparser  networkx=3.1  dill  psutil  flufl.lock  parsl 2024.4.15  appdirs  tomlkit  lxml
pip install pyyaml "decorator>=4,<5"  "tzlocal<3"  python-dateutil  bibtexparser  "networkx=3.1"  dill  psutil  flufl.lock  "parsl=2024.4.15"  appdirs  tomlkit  lxml
pip install pyyaml "decorator>=4,<5"  "tzlocal<3"  python-dateutil  bibtexparser  "networkx==3.1"  dill  psutil  flufl.lock  "parsl==2024.4.15"  appdirs  tomlkit  lxml
mkdir 4-git-repos
cd 4-git-repos/
mkdir qiime2
cd qiime2/
git@github.com:qiime2/qiime2.git
git clone
git clone git@github.com:qiime2/qiime2.git
pip install https://github.com/qiime2/qiime2/archive/refs/heads/dev.zip
pip install https://github.com/qiime2/q2cli/archive/refs/heads/dev.zip
pip install https://github.com/qiime2/q2-metadata/archive/refs/heads/dev.zip
qiime info
conda install click
qiime info
conda install jinja2
pip install https://github.com/qiime2/q2templates/archive/refs/heads/dev.zip
qiime info
pip install "scikit-bio==0.6.2"
qiime info
pip uninstall q2-metadata
qiime info
touch /home/jgc/miniforge3/envs/raspberry-chime/etc/qiime2_config.toml
ls /home/jgc/miniforge3/envs/raspberry-chime/etc/
ls /home/jgc/miniforge3/envs/raspberry-chime/
ipython
python
mkdir /home/jgc/.config/qiime2
touch /home/jgc/.config/qiime2/qiime2_config.toml
qiime info
conda list
conda list > ~/raspberry-chime-conda-list.txt
```
:::

:::{note} conda list
:class: dropdown

```
# packages in environment at /home/jgc/miniforge3/envs/raspberry-chime:
#
# Name                    Version                   Build  Channel
_openmp_mutex             4.5                       2_gnu    conda-forge
appdirs                   1.4.4                    pypi_0    pypi
atpublic                  5.1                      pypi_0    pypi
bcrypt                    4.3.0                    pypi_0    pypi
bibtexparser              1.4.3                    pypi_0    pypi
biom-format               2.1.16                   pypi_0    pypi
bzip2                     1.0.8                h68df207_7    conda-forge
ca-certificates           2025.1.31            hcefe29a_0    conda-forge
certifi                   2025.1.31                pypi_0    pypi
cffi                      1.17.1                   pypi_0    pypi
charset-normalizer        3.4.1                    pypi_0    pypi
click                     8.1.8              pyh707e725_0    conda-forge
cryptography              44.0.2                   pypi_0    pypi
decorator                 4.4.2                    pypi_0    pypi
dill                      0.4.0                    pypi_0    pypi
filelock                  3.18.0                   pypi_0    pypi
flufl-lock                8.1.0                    pypi_0    pypi
globus-sdk                3.55.0                   pypi_0    pypi
h5py                      3.13.0                   pypi_0    pypi
idna                      3.10                     pypi_0    pypi
jinja2                    3.1.6              pyhd8ed1ab_0    conda-forge
ld_impl_linux-aarch64     2.43                 h80caac9_4    conda-forge
libblas                   3.9.0           31_h1a9f1db_openblas    conda-forge
libcblas                  3.9.0           31_hab92f65_openblas    conda-forge
libexpat                  2.7.0                h5ad3122_0    conda-forge
libffi                    3.4.6                he21f813_1    conda-forge
libgcc                    14.2.0               he277a41_2    conda-forge
libgcc-ng                 14.2.0               he9431aa_2    conda-forge
libgfortran               14.2.0               he9431aa_2    conda-forge
libgfortran-ng            14.2.0               he9431aa_2    conda-forge
libgfortran5              14.2.0               hb6113d0_2    conda-forge
libgomp                   14.2.0               he277a41_2    conda-forge
liblapack                 3.9.0           31_h411afd4_openblas    conda-forge
liblzma                   5.8.1                h86ecc28_0    conda-forge
libnsl                    2.0.1                h31becfc_0    conda-forge
libopenblas               0.3.29          pthreads_h9d3fd7e_0    conda-forge
libsqlite                 3.49.1               h5eb1b54_2    conda-forge
libstdcxx                 14.2.0               h3f4de04_2    conda-forge
libstdcxx-ng              14.2.0               hf1166c9_2    conda-forge
libuuid                   2.38.1               hb4cce97_0    conda-forge
libxcrypt                 4.4.36               h31becfc_1    conda-forge
libzlib                   1.3.1                h86ecc28_2    conda-forge
lxml                      5.3.2                    pypi_0    pypi
markupsafe                3.0.2           py310h66848f9_1    conda-forge
natsort                   8.4.0                    pypi_0    pypi
ncurses                   6.5                  ha32ae93_3    conda-forge
networkx                  3.1                      pypi_0    pypi
numpy                     1.26.4          py310hcbab775_0    conda-forge
openssl                   3.5.0                hd08dc88_0    conda-forge
packaging                 25.0                     pypi_0    pypi
pandas                    2.2.2           py310h34310a0_1    conda-forge
paramiko                  3.5.1                    pypi_0    pypi
parsl                     2024.4.15                pypi_0    pypi
patsy                     1.0.1                    pypi_0    pypi
pip                       25.0.1             pyh8b19718_0    conda-forge
psutil                    7.0.0                    pypi_0    pypi
pycparser                 2.22                     pypi_0    pypi
pyjwt                     2.10.1                   pypi_0    pypi
pynacl                    1.5.0                    pypi_0    pypi
pyparsing                 3.2.3                    pypi_0    pypi
python                    3.10.17         h256493d_0_cpython    conda-forge
python-dateutil           2.9.0.post0        pyhff2d567_1    conda-forge
python-tzdata             2025.2             pyhd8ed1ab_0    conda-forge
python_abi                3.10                    6_cp310    conda-forge
pytz                      2025.2             pyhd8ed1ab_0    conda-forge
pyyaml                    6.0.2                    pypi_0    pypi
pyzmq                     26.4.0                   pypi_0    pypi
q2cli                     2025.4.0.dev0+15.gbd99eec8          pypi_0    pypi
q2templates               2025.4.0.dev0+7.g55d3090          pypi_0    pypi
qiime2                    2025.4.0.dev0+16.g832a1e981          pypi_0    pypi
readline                  8.2                  h8382b9d_2    conda-forge
requests                  2.32.3                   pypi_0    pypi
scikit-bio                0.6.2                    pypi_0    pypi
scipy                     1.13.0          py310h70fbbe5_1    conda-forge
setproctitle              1.3.5                    pypi_0    pypi
setuptools                78.1.0             pyhff2d567_0    conda-forge
six                       1.17.0             pyhd8ed1ab_0    conda-forge
statsmodels               0.14.4                   pypi_0    pypi
tblib                     3.1.0                    pypi_0    pypi
tk                        8.6.13               h194ca79_0    conda-forge
tomlkit                   0.13.2                   pypi_0    pypi
typeguard                 4.4.2                    pypi_0    pypi
typing-extensions         4.13.2                   pypi_0    pypi
tzdata                    2025b                h78e105d_0    conda-forge
tzlocal                   2.1                      pypi_0    pypi
urllib3                   2.4.0                    pypi_0    pypi
wheel                     0.45.1             pyhd8ed1ab_1    conda-forge
```
:::

## network

- https://www.raspberrypi.com/tutorials/host-a-hotel-wifi-hotspot/
- https://raspberrytips.com/configure-firewall-raspberry-pi/

:::{note} shell history
:class: dropdown

```
nmcli device
ls
nmcli --help
nmcli d --help
nmcli d show
ls
htop
ls
exit
ls
sudo nmcli device wifi hotspot ssid raspberry-chime password acgtacgt ifname wlan0
nmcli connection
nmcli connection show 4366703b-9777-46c7-a91e-52aca1d81560
nmcli connection
nmcli connection show 4366703b-9777-46c7-a91e-52aca1d81560
sudo nmcli connection modify 4366703b-9777-46c7-a91e-52aca1d81560 connection.autoconnect yes connection.autoconnect-priority 100
nmcli connection show 4366703b-9777-46c7-a91e-52aca1d81560
nmcli
nmcli --help
nmcli n --help
nmcli g --help
nmcli g status
nmcli device
nmcli device wlan0
ls
sudo ufw
sudo apt-get install ufw
sudo ufw allow 80
sudo ufw allow 22
sudo ufw enable
ls
conda activate raspberry-chime
vim ~/.zshrc
exit
ls
htop
ping 8.8.8.8
history
```

:::
