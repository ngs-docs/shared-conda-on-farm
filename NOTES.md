# Notes on setting up shared package system conda

Select a special account - below, `datalab-01`.

Make sure the `remote-computing.cache` directory is chmod a+rwxt, or at least is set up that way for the special account.

(Hmm, could host it in datalab-01...)

run install script.

Then run

```
conda install -y mamba
```
in base environment.
