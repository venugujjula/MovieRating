# This file is used to create the customised container with given below info
FROM centos:7
MAINTAINER tester.com
RUN yum -y install update curl
WORKDIR /etc/movierating
ADD mrating.sh /etc/movierating/mrating.sh
