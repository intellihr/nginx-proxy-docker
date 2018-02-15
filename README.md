# Nginx Docker Image for Simple Reverse Proxy

Intend to be used as very simple reverse proxy for other apps (e.g. gunicorn, unicorn, etc.)

The following shows an example use case with docker-compose:

```
# docker-compose.yml

version: '2'
services:
  nginx:
    image: quay.io/intellihr/nginx-proxy:1.13
    ports:
      - "80:80"
    environment:
      - PORT=80
      - APP_SERVER app:5000
    links:
      - web:app
    restart: always
  web:
    image: ${TARGET_IMAGE}
    ports:
      - "5000:5000"
    environment:
      - TARGET_ENV=PROD
    env_file: .env
    restart: always
```
