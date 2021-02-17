FROM nginx:1.19.7-alpine

LABEL maintainer="soloman.weng@intellihr.com.au"
ENV REFRESH_AT=2019.08.02

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY run /root/run

CMD ["/root/run"]
