#! /bin/bash
set -e

cd ~/
mkdir -p ~/.conda/pkgs
cp ~ctbrown/shared-conda-on-farm/condarc ~/.condarc
bash ~ctbrown/shared-conda-on-farm/Mambaforge-Linux-x86_64.sh -b -p $HOME/miniforge3

# install!
eval "$(~/miniforge3/bin/conda shell.bash hook)"
conda init

# add it to the default login on farm
echo 'source .bashrc' > ~/.bash_profile

# now, load conda
source ~/.bashrc

# install mamba
conda install -y mamba

# and also do mamba init!
mamba init

exit 0
