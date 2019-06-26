FROM ubuntu
# Install Oracle Server JRE 8u212
# ENV filename server-jre-8u212-linux-x64.tar.gz
COPY server-jre-8u212-linux-x64.tar.gz /tmp
RUN cd /tmp && \
    tar xf server-jre-8u212-linux-x64.tar.gz -C /srv/ && \
    rm -f server-jre-8u212-linux-x64.tar.gz && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
