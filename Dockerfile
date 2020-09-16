FROM nginx:alpine

ARG BUILD_DATE=""
ARG BUILD_VERSION="dev"

LABEL maintainer="OpenTTD Dev Team <info@openttd.org>"
LABEL org.opencontainers.image.created=${BUILD_DATE}
LABEL org.opencontainers.image.authors="OpenTTD Dev Team <info@openttd.org>"
LABEL org.opencontainers.image.url="https://github.com/OpenTTD/binaries-redirect"
LABEL org.opencontainers.image.source="https://github.com/OpenTTD/binaries-redirect"
LABEL org.opencontainers.image.version=${BUILD_VERSION}
LABEL org.opencontainers.image.licenses="GPLv2"
LABEL org.opencontainers.image.title="Redirecting (deprecated) binaries.openttd.org to new CDN"
LABEL org.opencontainers.image.description="Simply webserver to redirect old URLs on binaries.openttd.org to their new location."

RUN sed -i 's/access_log/# access_log/g' /etc/nginx/nginx.conf
COPY nginx.default.conf /etc/nginx/conf.d/default.conf
