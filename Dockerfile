FROM centos:centos7
# Install Oracle Server JRE 8u181
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/server-jre-8u181-linux-x64.tar.gz" && \
    tar xf server-jre-8u181-linux-x64.tar.gz -C /srv/ && \
    rm -f server-jre-8u181-linux-x64.tar.gz && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
