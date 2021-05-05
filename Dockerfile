FROM debian:sid

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y procps curl tmux python3 python3-pip\
    && python3 -m pip install jupyter\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
