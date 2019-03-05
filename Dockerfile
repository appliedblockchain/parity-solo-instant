FROM parity/parity:v2.4.0

# necessary for compatibility with docker volumes, which are owned by root
USER root

COPY --chown=parity:parity node.toml chain.json pw.txt /solo/
COPY --chown=parity:parity keys/ /solo/keys/

ENTRYPOINT ["parity", "--config", "/solo/node.toml", "--unsafe-expose", "--min-gas-price", "0"]
