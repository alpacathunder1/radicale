FROM debian:bookworm-slim
RUN apt update && \
	apt install -y \
	tzdata \
	tini \
	radicale \
	python3-passlib \
	python3-bcrypt
RUN apt clean
ENTRYPOINT ["/usr/bin/tini", "--", "radicale", "-C", "/config/config"]
