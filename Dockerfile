#v.1
FROM fedora:35
MAINTAINER study
ENV TZ=Europe/Moscow
RUN  dnf install -y nginx
RUN yum clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html

CMD [ "nginx" ]
