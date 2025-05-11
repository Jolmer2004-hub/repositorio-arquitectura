FROM openjdk:23
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/archivo.jar
ADD ${JAR_FILE} app.jar
COPY libcalc.so /lib64
ENV LD_LIBRARY_PATH=/user/local/lib/jni:$LD_LIBRARY_PATH
ENTRYPOINT ["java","-jar","app.jar"]
