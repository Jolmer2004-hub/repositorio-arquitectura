FROM openjdk:17-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends libc6 libstdc++6 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY micro-servicio-cesar-0.0.1-SNAPSHOT.jar app.jar

COPY libcifrado.so /lib64/

ENV LD_LIBRARY_PATH=/lib64

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
