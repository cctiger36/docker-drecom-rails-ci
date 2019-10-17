FROM drecom/centos-rails:ruby-2.6.4

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
 && yum -y install \
      python36u \
      python36u-devel \
      python36u-libs \
      python36u-pip \
      subversion \
 && yum clean all \
 && pip3.6 install awscli awslogs

CMD [ "irb" ]
