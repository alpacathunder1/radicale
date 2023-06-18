FROM debian:bookworm-slim
RUN apt update && \
	apt install -y \
	tzdata \
	tini && \
	apt clean && \
	rm -rf /var/lib/apt/lists/
RUN apt update && \
	apt install -y \
	radicale \
	python3-passlib \
	python3-bcrypt && \
	apt clean && \
	rm -rf /var/lib/apt/lists/
ENTRYPOINT ["/usr/bin/tini", "--", "radicale", "-C", "/config/config"]
