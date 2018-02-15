FROM nginx:1.13-alpine

LABEL maintainer="soloman.weng@intellihr.com.au"
ENV REFRESH_AT=2018.02.05

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY run /root/run

CMD ["./run"]
