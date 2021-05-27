FROM gitpod/workspace-full
USER root
RUN chown -R gitpod:gitpod /opt
USER gitpod
RUN cd /opt && git clone https://github.com/grafana/grafana && cd /opt/grafana && yarn install --pure-lockfile --no-progress
RUN cd /opt && wget http://www-eu.apache.org/dist/lucene/solr/8.8.2/solr-8.8.2.tgz && tar -xvzf ./solr-8.8.2.tgz
