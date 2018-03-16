FROM parity/parity:v1.8.9

COPY node.toml chain.json pw.txt /solo/
COPY keys/ /solo/keys/

ENTRYPOINT ["/parity/parity", "--config", "/solo/node.toml", "--unsafe-expose"]