FROM adoptopenjdk/openjdk11
WORKDIR /docker-carina
RUN apt-get update && apt-get install -y maven
COPY . /docker-carina
ENV SUITE=api
CMD ["mvn", "test", "-Dsuite=${SUITE}"]
