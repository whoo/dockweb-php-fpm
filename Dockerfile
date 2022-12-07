FROM debian:11.5
MAINTAINER derrierdo@gmail.com
RUN apt-get -y update && apt-get install -y php5-fpm
RUN sed -i -e "s/^listen = .*/listen = 9000/" -e 's/\(;\)\(.*HOSTNAME.*\)/\2/g' /etc/php5/fpm/pool.d/www.conf
CMD /usr/sbin/php5-fpm -F
EXPOSE 9000

