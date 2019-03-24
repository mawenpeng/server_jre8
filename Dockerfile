FROM centos:centos7
# Install Oracle Server JRE 8u202
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "https://download.oracle.com/otn-pub/java/jdk/8u202-b08/1961070e4c9b4e26a04e7f5a083f551e/server-jre-8u202-linux-x64.tar.gz" && \
    tar xf server-jre-8u202-linux-x64.tar.gz -C /srv/ && \
    rm -f server-jre-8u202-linux-x64.tar.gz && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME=/srv/jdk
