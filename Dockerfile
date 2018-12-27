FROM nginx:1.15-alpine

LABEL maintainer="soloman.weng@intellihr.com.au"
ENV REFRESH_AT=2018.12.27

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY run /root/run

CMD ["/root/run"]
