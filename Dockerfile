FROM elasticsearch:1.7.0

RUN plugin install elasticsearch/elasticsearch-cloud-aws/2.7.0
RUN plugin install lmenezes/elasticsearch-kopf/master

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

EXPOSE 9200 9300

CMD ["elasticsearch"]
