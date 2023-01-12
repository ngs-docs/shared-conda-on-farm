# Notes on setting up shared package system conda

[![hackmd-github-sync-badge](https://hackmd.io/2lsTwwb5TPCRUSVYvVbclw/badge)](https://hackmd.io/2lsTwwb5TPCRUSVYvVbclw)

## Special "central" account"

Select a special account - below, `datalab-01`.

Make sure the `remote-computing.cache` directory is chmod a+rwxt, or at least is set up that way for the special account.

(Hmm, could host it in datalab-01...)

run install script in datalab-01:
```
~ctbrown/shared-conda-on-farm/install-miniforge.sh
```

Remove the local cache pkg directory from this account's .condarc.

Then run

```
conda install -y mamba
```
in base environment.

Add chmod to bash_profile:
```
echo chmod a+rwx /home/ctbrown/remote-computing.cache/cache/ >> ~/.bash_profile
```

## "Client" accounts

Run install script in each one:
```
~ctbrown/shared-conda-on-farm/install-miniforge.sh
```

## How this works

datalab-01 will cache packages for others
so run conda install in there first
always need to run the chmod step too

* instructors should use client accounts, too
* master account should only be used to install/store cached packages

## XXX

```
for i in 08 09 $(seq 10 80) 
do
ssh datalab-$i@farm /home/ctbrown/shared-conda-on-farm/install-miniforge.sh    
done
```

```
mamba env create -f ~datalab-01/workshop_12Jan_2023/SV_calling_LR/envs.yaml

mamba env create -f /home/datalab-01/workshop_12Jan_2023/SV_calling_LR/envs.yaml
```