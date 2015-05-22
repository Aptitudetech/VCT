FROM ubuntu:14.04
MAINTAINER Aptitude Technologies <support@aptitudetech.net>

ENV DEBIAN_FRONTEND noninteractive
ENV S3FS_VER 2.9.4

COPY setup.sh /
RUN  bash /setup.sh
VOLUME ["/var/lib/mysql", "/home/frappe/frappe-bench/sites/site1.local/"]
