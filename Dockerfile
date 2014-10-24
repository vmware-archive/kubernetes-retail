FROM dockerfile/java

RUN wget -q http://mirror.reverse.net/pub/apache/tomcat/tomcat-8/v8.0.14/bin/apache-tomcat-8.0.14.tar.gz && \
    tar zxf apache-tomcat-*.tar.gz && \
    rm -f apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat

ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
CMD ["/run.sh"]
