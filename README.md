# mailcow-apiblueprint

This project aims to provide docs for the mailcow API. Mailcow is opensource email server and groupware build with Docker.

## How to gerenate docs

To generate the docs from the apiary.apib file, run `docker run -it --rm -v $PWD:/doc quay.io/bukalapak/snowboard html -o output.html apiary.apib`.
