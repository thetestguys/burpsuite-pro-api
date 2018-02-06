FROM gradle:latest

USER root

WORKDIR /var/local

RUN git clone https://github.com/vmware/burp-rest-api.git

COPY burpsuite_pro_v1.7.32.jar /var/local/burp-rest-api/lib/burpsuite_pro_v1.7.32.jar

WORKDIR /var/local/burp-rest-api/

EXPOSE 8080 8090

RUN ./gradlew clean build -x test