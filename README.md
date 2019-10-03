# mailcow-apiblueprint

This project aims to provide docs for the mailcow API. Mailcow is opensource email server and groupware build with Docker.

## How to gerenate docs

If you want to generate the docs from the apiary.apib file you will need snowboard you can install it using `npm install -g snowboard`.

Then run `run -it --rm -v $PWD:/doc quay.io/bukalapak/snowboard html -o output.html apiary.apib` to generate the api docs file.
