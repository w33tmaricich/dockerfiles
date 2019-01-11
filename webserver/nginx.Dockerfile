FROM nginx
MAINTAINER amaricich <w33tmaricich@gmail.com>

EXPOSE 80

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD /src /www
