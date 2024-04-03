FROM golang:1.22.1-alpine3.19 AS builder

WORKDIR /go

COPY ./ola-mundo.go .

RUN go build ./ola-mundo.go

#---

FROM scratch

COPY --from=builder /go/ola-mundo .

CMD ["./ola-mundo"]

