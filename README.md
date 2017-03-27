# Conda Tests

## Invalid dependencies in run not checked

The conda build for a project with invalid dependencies in the run requirements runs through without error.
Note that this is the case, even though I am testing the import after the build.
However, the package cannot be installed due to invalid requirements.

To reproduce, build the package and try to install the package (either locally or from a channel)

```
conda build build/
```

```
conda install -c channel conda_test
```

This fails with:

```
PackageNotFoundError: Package not found: Conda could not find '
```

See also this conda issue:
https://github.com/conda/conda-build/issues/1880
