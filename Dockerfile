FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update \
    && apt install -y curl zip

RUN curl -fsSL https://bun.sh/install | bash

WORKDIR /code

COPY bin .

ENTRYPOINT ["/root/.bun/bin/bun"]

CMD ["run","/code/main.ts"]