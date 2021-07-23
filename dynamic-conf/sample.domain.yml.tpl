http:
  routers:
    https.<host-name>:
      entryPoints:
      - websecure
      rule: "Host(`<host-name>)"
      tls:
        certResolver: main-resolver
      middlewares:
      - redirect.<host-name>
      service: dummy


  middlewares:
    redirect.<host-name>:
      redirectRegex:
        permanent: true
        regex: "^https://<host-name>/(.*)"
        replacement: "https://example.com/${1}"
