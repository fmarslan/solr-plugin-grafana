FROM gitpod/workspace-full

RUN cd /workspace && git clone https://github.com/grafana/grafana
RUN cd grafana && yarn install --pure-lockfile --no-progress
