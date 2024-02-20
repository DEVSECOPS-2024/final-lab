FROM openjdk:11-jre

EXPOSE 8080

ADD final-lab-2.6.0-plain.jar /app/final-lab-2.6.0-plain.jar

WORKDIR /app

CMD java -jar final-lab-2.6.0-plain.jar


#FROM node:16.17.0-alpine as builder
#WORKDIR /app
#COPY ./package.json .
#COPY ./yarn.lock .
#RUN yarn install
#COPY . .
#ARG TMDB_V3_API_KEY
#ENV VITE_APP_TMDB_V3_API_KEY=${TMDB_V3_API_KEY}
#ENV VITE_APP_API_ENDPOINT_URL="https://api.themoviedb.org/3"
#RUN yarn build

#FROM nginx:stable-alpine
#WORKDIR /usr/share/nginx/html
#RUN rm -rf ./*
#COPY --from=builder /app/dist .
#EXPOSE 80
#ENTRYPOINT ["nginx", "-g", "daemon off;"]
