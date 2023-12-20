FROM golang:1.21 as build

WORKDIR /

COPY . .

RUN go build -o ./challenge ./challenge.go

FROM scratch
COPY --from=build ./challenge ./challenge

CMD ["./challenge"]