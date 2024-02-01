FROM arm64v8/alpine:latest

WORKDIR /app


RUN apk update 
RUN apk --no-cache add hugo

EXPOSE 1313

# Command to serve the Hugo site
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--appendPort=false"]
