# h5ai Docker

Docker for h5ai project (https://github.com/lrsjng/h5ai)

To use:
```
docker run \
  --name h5ai
  -p 80:80 \
  -v /you/path/to/inspect/data/:/data \
  -v h5ai:/h5ai \
  -e USERNAME=user \
  -e PASSWORD=pass \
  mythevalentinus/h5ai-nginx:latest
```

## docker-compose.yml
```
services:
  h5ai:
    image: mythevalentinus/h5ai-nginx:latest
    restart: always
    container_name: h5ai
    environment:
      USERNAME: user
      PASSWORD: pass
    volumes:
      - h5ai:/h5ai
      - /your/local/data:/data
    ports:
      - 80:80/tcp
volumes:
  h5ai:
    driver: local
```
