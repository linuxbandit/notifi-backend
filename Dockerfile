FROM golang:1.12-alpine

RUN apk update
RUN apk add git
RUN apk add gcc
RUN apk add libc-dev

ADD . /app/
WORKDIR /app
RUN go build -o notifi .
CMD ["/app/notifi"]