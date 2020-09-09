FROM hayd/alpine-deno:1.3.3
WORKDIR /app

EXPOSE 5000

# These steps will be re-run upon each file change in your working directory:
COPY . ./

# Added to ENTRYPOINT of base image.
RUN deno cache index.ts
CMD ["run", "--allow-net", "--allow-env",  "index.ts"]
