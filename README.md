# mailcow-apiblueprint

This project is deprecated and has been replaced by openapi docs can be found at your mailcow at /api or [https://demo.mailcow.email/api/](https://demo.mailcow.email/api/)

[![Build Status](https://drone.mailcow.email/api/badges/mailcow/mailcow-apiblueprint/status.svg)](https://drone.mailcow.email/mailcow/mailcow-apiblueprint)

This project aims to provide the API documention for the [mailcow: dockerized](https://github.com/mailcow/mailcow-dockerized) API.

## How to generate the API documention

To generate the API documention from the apiary.apib file, you can simply execute following one-liner:
```
docker build . -t snowboard:latest
docker run -it --rm -v $PWD:/doc snowboard:latest snowboard html -o output.html -c config.yaml apiary.apib
```
