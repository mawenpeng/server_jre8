FROM centos:centos7
# Install Oracle Server JRE 8u212
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "https://download.oracle.com/otn/java/jdk/8u212-b10/59066701cf1a433da9770636fbc4c9aa/server-jre-8u212-linux-x64.tar.gz" && \
    tar xf server-jre-8u202-linux-x64.tar.gz -C /srv/ && \
    rm -f server-jre-8u202-linux-x64.tar.gz && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
