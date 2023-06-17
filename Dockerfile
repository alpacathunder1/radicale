FROM debian:bookworm-slim
RUN apt update && \
	apt install -y \
	tzdata \
	tini
RUN apt install -y \
	radicale \
	python3-passlib \
	python3-bcrypt
RUN apt clean
ENTRYPOINT ["/usr/bin/tini", "--", "radicale", "-C", "/config/config"]
