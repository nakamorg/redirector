### Redirects Web URLs ###
A fun little project with [traefik proxy 2.4](https://doc.traefik.io/traefik/) to redirect web requests

## Use Cases
1. Redirect from `example.com` to `www.example.com` because you can't have CNAME for apex record
1. Redirect from `a.example.com` to `b.example.com` because, why not?

## Features
1. Automatic `https` redirects
1. Dynamic config using [file provisioner](https://doc.traefik.io/traefik/reference/dynamic-configuration/file/)

    Simply drop in a config file in `dynamic-conf` dir and traefik will pick those configs
1. Automatic TLS certificates from [Let's Encrypt](https://letsencrypt.org/)

## How to Use
1. Install [traefik v2](https://doc.traefik.io/traefik/getting-started/install-traefik/)
1. Modify the files in `dynamic-conf` directory as needed (mainly you would need to replace `test00.example.com.yml` and `sample.domain.yml.tpl` with your your domain files).
1. Run

    1. Running on linux machine
        ```bash
        cd redirector
        traefik --traefik.yml
        ```