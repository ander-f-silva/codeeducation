FROM golang:1.16.4-alpine3.13 AS builder

RUN mkdir /app

WORKDIR /app

COPY . .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/codeeducation

FROM scratch

COPY --from=builder /go/bin/codeeducation /go/bin/codeeducation

ENTRYPOINT ["/go/bin/codeeducation"]
