FROM nginx:1.17-alpine

ADD ./autoreload-nginx /home

RUN apk add --update inotify-tools \
    && chmod +x /home/autoreload-nginx

CMD ["/home/autoreload-nginx", "-g", "daemon off;"]
