FROM golang:1.23-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /out/payments-api .

FROM alpine:3.20
COPY --from=build /out/payments-api /usr/local/bin/
ENTRYPOINT ["payments-api"]

