FROM debian:10
LABEL maintainer="4i! aka \$oRRy <abrakadabra21099@gmail.com>"
LABEL description="Graphical console over SPICE protocol."
ENV TZ=Europe/Samara
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
  apt -q=2 update && apt --show-progress -q=2 -y install \
  task-cyrillic-kde-desktop task-ssh-server && \
  rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/bash"]
EXPOSE 22/tcp,5900/tcp
