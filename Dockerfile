# Build Hugo's pub files on Debian:latest
FROM ubuntu:20.04 as HUGO

RUN apt-get update -y
RUN apt-get install hugo sed -y

COPY ./source /static-site

RUN hugo -v --source=/static-site --destination=/static-site/public

# Serve the public files using nginx:alpine
FROM nginx:stable-alpine
RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old-index.html
COPY --from=HUGO /static-site/public/ /usr/share/nginx/html/

# Instruct the container to listen for requests on port 80 (HTTP).
EXPOSE 80
      
