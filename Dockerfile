FROM nginx
MAINTAINER mailto:sandippanchbhai08@gmail.com
RUN apt update
RUN apt install -y wget php \
  zip \
 unzip
RUN rm -rf /usr/share/nginx/html/*
ADD https://releases.wikimedia.org/mediawiki/1.37/mediawiki-1.37.2.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html/
RUN unzip mediawiki-1.37.2.zip 
RUN cp -rvf mediawiki-1.37.2/* .
#RUN rm -rf templatemo_519_beauty beauty.zip
#CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
