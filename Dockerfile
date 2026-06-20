FROM denoland/deno:2.3.1

WORKDIR /app

VOLUME /app/dat
VOLUME /app/data

COPY . .

RUN deno install --allow-import && deno cache --allow-import main.ts

CMD [ "deno", "task", "run" ]

