FROM ubuntu:latest as build
WORKDIR /home/webapp/
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
RUN git init
RUN git pull https://github.com/pavankumar-thippeswamy/webapp.git
RUN mvn -X package

FROM tomcat:8.0.41-jre8
COPY --from=build /home/webapp/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
