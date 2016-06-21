FROM scratch
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /
COPY traefik.toml /
EXPOSE 80
EXPOSE 8080
EXPOSE 443
ENTRYPOINT ["/traefik -c /traefik.toml"]
