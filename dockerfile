FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o tracker .

CMD ["./tracker"]
