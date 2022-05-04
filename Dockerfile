FROM ubuntu/apache2
MAINTAINER mailto:sandippanchbhai08@gmail.com
RUN apt update
RUN apt install -y wget php* php7.4-mbstring php7.4-xml php7.4-intl \
  zip \
 unzip
RUN rm -rf /var/www/html/*
ADD https://releases.wikimedia.org/mediawiki/1.37/mediawiki-1.37.2.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip mediawiki-1.37.2.zip 
RUN cp -rvf mediawiki-1.37.2/* .
RUN rm -rf  mediawiki-1.37.2 mediawiki-1.37.2.zip
#CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
