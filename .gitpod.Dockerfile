FROM gitpod/workspace-full

WORKDIR /workspace

RUN git clone https://github.com/grafana/grafana
RUN cd grafana && yarn install --pure-lockfile --no-progress