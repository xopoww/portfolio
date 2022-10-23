# syntax=docker/dockerfile:1

FROM node:16-alpine as build-front

WORKDIR /front
COPY ./xopoww/ .

RUN npm install
RUN npm run build


FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY --from=build-front /front/dist /usr/share/nginx/html
COPY nginx.conf.template /default.conf.template

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
