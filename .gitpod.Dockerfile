FROM gitpod/workspace-full
USER root
RUN chown -R gitpod:gitpod /opt
RUN cd /opt && git clone https://github.com/grafana/grafana
RUN cd grafana && yarn install --pure-lockfile --no-progress
