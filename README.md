# Raspberry Chime build notes

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

## Development instructions

The following sub-sections illustrate how to develop this documentation.

### Create the development environment

To build this documentation locally for development purposes, first create your development environment.

```
cd raspberry-chime-notes
conda env create -n $(date +%Y-%m-%d)-raspberry-chime-notes --file environment-files/readthedocs.yml
conda activate $(date +%Y-%m-%d)-raspberry-chime-notes
```

### Build the book

Next, build the book:

```
make html
```

(Alternatively, `make preview` or `make fast-preview` can speed up test builds.)

### Serve the book locally

Finally, run the following to serve the built documentation locally:

```
make serve
```

Have fun!
