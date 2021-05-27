FROM gitpod/workspace-full
USER root
RUN chown -R gitpod:gitpod /opt
RUN cd /opt && git clone https://github.com/grafana/grafana && cd /opt/grafana && yarn install --pure-lockfile --no-progress
RUN cd /opt && wget https://http://www-eu.apache.org/dist/lucene/solr/8.8.2/solr-8.8.2.tgz && tar -xvzf ./solr-8.8.2.tgz && /opt/solr-8.8.2/bin/solr start && /opt/solr-8.8.2/bin/solr create -c films -s 2 -rf 2 &&  /opt/solr-8.8.2/bin/post -c films /opt/solr-8.8.2/example/films/films.xml
