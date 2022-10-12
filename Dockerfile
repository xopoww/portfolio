# syntax=docker/dockerfile:1

FROM nginx

COPY static/ /usr/share/nginx/html
COPY nginx.conf.template /default.conf.template

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]