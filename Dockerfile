FROM node:lts-iron
ENV APIHOME=/home/api
RUN mkdir -p $APIHOME
WORKDIR $APIHOME
RUN apt-get update
RUN apt-get install -y build-essential
COPY . $APIHOME
EXPOSE 8585
CMD npm start