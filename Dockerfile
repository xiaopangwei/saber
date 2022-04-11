FROM nginx

MAINTAINER huang

RUN apt-get update && apt-get install -y unzip wget procps

RUN rm /etc/nginx/conf.d/default.conf

ADD default.conf /etc/nginx/conf.d/

COPY dist/ /usr/share/nginx/html/

EXPOSE 80

EXPOSE 443
