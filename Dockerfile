FROM ubuntu
# Install Oracle Server JRE 8u212
ENV filename server-jre-8u212-linux-x64.tar.gz
COPY $filename /tmp
RUN cd /tmp && \
    tar zxf $filename -C /srv/ && \
    rm -f $filename && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
