FROM ubuntu:latest

RUN apt-get update && apt-get install -y tmate

ENV TMATE_SOCKET=/tmp/tmate.sock
ENV TMATE_PUBLIC_HOSTNAME=${RAILWAY_STATIC_URL}

CMD ["tmate", "-S", "/tmp/tmate.sock", "-p", "2222"]
