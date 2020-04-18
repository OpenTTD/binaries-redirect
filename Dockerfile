FROM nginx:alpine

ARG BUILD_DATE=""
ARG BUILD_VERSION="dev"

LABEL maintainer="truebrain@openttd.org"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=${BUILD_DATE}
LABEL org.label-schema.version=${BUILD_VERSION}

RUN sed -i 's/access_log/# access_log/g' /etc/nginx/nginx.conf
COPY nginx.default.conf /etc/nginx/conf.d/default.conf
