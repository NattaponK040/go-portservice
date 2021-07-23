FROM golang:1.16.5 as build
COPY . /app
WORKDIR /app
RUN go build -o /go-portfolio-service .

### Put the binary onto Heroku image
FROM heroku/heroku:16
COPY --from=build /go-portfolio-service /go-portfolio-service
CMD ["/go-portfolio-service"]