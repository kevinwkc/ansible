FROM ansible/ansible-runner

ENV DEBIAN_FRONTEND=noninteractive

#RUN apt-get update -qy  &&\
#  apt-get install -qy make curl

RUN yum install -y make curl vi
   && yum -y clean all && rm -rf /var/cache/yum
