FROM parity/parity:v2.4.0

COPY --chown=parity:parity node.toml chain.json pw.txt /solo/
COPY --chown=parity:parity keys/ /solo/keys/

ENTRYPOINT ["parity", "--config", "/solo/node.toml", "--unsafe-expose", "--gasprice", "0"]
