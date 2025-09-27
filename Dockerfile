# Minimal wrapper that bakes the config into the official image.
FROM ghcr.io/heyputer/puter:latest

# Puter expects config in /etc/puter and data in /var/puter
# (You can also mount these as volumes at deploy-time.)
COPY puter.config.json /etc/puter/config.json

# Default port used by the image/docs
ENV PORT=4100
EXPOSE 4100
