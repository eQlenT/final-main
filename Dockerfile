FROM golang:1.22.4

WORKDIR /usr/src/app

COPY . .

RUN go mod download

RUN CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o /parcels

CMD ["/parcels"]