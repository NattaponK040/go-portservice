FROM golang:1.16.5
COPY . /go-portfolio-service
WORKDIR /go-portfolio-service
RUN go build -o /go-portfolio-service .
