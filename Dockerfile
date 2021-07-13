FROM openjdk:13-alpine

ENV KARATE_VERSION 1.0.1

WORKDIR /
RUN wget -O karate.jar https://github.com/intuit/karate/releases/download/v$KARATE_VERSION/karate-$KARATE_VERSION.jar
RUN apk add --no-cache bash
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
