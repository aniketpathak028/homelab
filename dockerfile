FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    htop \
    iotop \
    iftop \
    atop \
    sysstat \
    procps \
    strace \
    lsof \
    dstat \
    net-tools \
    iproute2 \
    tcpdump \
    vim \
    nano \
    curl \
    wget \
    python3 \
    python3-pip \
    auditd \
    schedtool \
    build-essential \
    cron \
    man-db \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /practice && \
    chown root:root /practice

COPY cpu_bound_task.sh /practice/
COPY io_sim_task.sh /practice/
COPY net_client_task.sh /practice/
COPY log_rotate.sh /practice/

RUN chmod +x /practice/cpu_bound_task.sh \
    && chmod +x /practice/io_sim_task.sh \
    && chmod +x /practice/net_client_task.sh \
    && chmod +x /practice/log_rotate.sh

RUN echo '*/10 * * * * root /practice/log_rotate.sh' > /etc/cron.d/practice_log_rotation \
    && chmod 0644 /etc/cron.d/practice_log_rotation \
    && touch /var/log/cron.log

SHELL ["/bin/bash", "-c"]

COPY bashrc /root/.bashrc

CMD ["/bin/bash"]