FROM parity/parity:v1.10.7

COPY node.toml chain.json pw.txt /solo/
COPY keys/ /solo/keys/

ENTRYPOINT ["/parity/parity", "--config", "/solo/node.toml", "--unsafe-expose", "--gasprice", "0"]