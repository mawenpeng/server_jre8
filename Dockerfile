FROM centos:centos7
# Install Oracle Server JRE 8u192
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u192-b12/750e1c8617c5452694857ad95c3ee230/server-jre-8u192-linux-x64.tar.gz" && \
    tar xf server-jre-8u192-linux-x64.tar.gz -C /srv/ && \
    rm -f server-jre-8u192-linux-x64.tar.gz && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
