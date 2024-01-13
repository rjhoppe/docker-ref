# Multi-stage Dockerfile to reduce size of image
# First stage - Build (produce binary)
# Second stage - Run 

# Build stage - build binary file
FROM golang:1.21.6-alpine3.18 AS builder
WORKDIR /app
COPY . .
RUN go build -o main main.go

# Run stage
FROM alpine3.18
WORKDIR /app
COPY --from=stage /app/main .

EXPOSE 8080
CMD [ "/app/main" ]
