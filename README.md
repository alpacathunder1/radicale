
# radicale

A basic radicale Dockerfile.

```yaml
  radicale:
    build:
      context: /opt/radicale
    container_name: radicale
    depends_on:
    - swag
    environment:
      TZ: America/New_York
    labels:
      diun.enable: "false"
    logging:
      driver: json-file
      options:
        max-size: 1024m
    networks:
      belphegornet: null
    restart: always
    user: 1000:1000
    volumes:
    - /opt/radicale/config:/config:ro
    - /opt/radicale/data:/data:rw
```
