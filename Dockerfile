FROM ubuntu
# Install Oracle Server JRE 8u212
ARG filename=server-jre-8u212-linux-x64.tar.gz
COPY $filename /tmp
RUN ls -l /tmp
RUN cd /tmp && \
    wget https://media.githubusercontent.com/media/mawenpeng/server_jre8/8u212-b10-jdk-down/server-jre-8u212-linux-x64.tar.gz \
    tar xf $filename -C /srv/ && \
    rm -f $filename && \
    ln -s /srv/jdk1.8* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
