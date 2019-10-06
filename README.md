# mailcow-apiblueprint

This project aims to provide the API documention for the [mailcow: dockerized](https://github.com/mailcow/mailcow-dockerized) API.

## How to generate the API documention

To generate the API documention from the apiary.apib file, you can simply execute following one-liner: 
`docker run -it --rm -v $PWD:/doc quay.io/bukalapak/snowboard html -o output.html -c config.yaml apiary.apib`
