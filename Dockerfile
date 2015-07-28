FROM elasticsearch:1.7.0

RUN plugin install elasticsearch/elasticsearch-cloud-aws/2.7.0
RUN plugin install lmenezes/elasticsearch-kopf/master

COPY config /usr/share/elasticsearch/config

EXPOSE 9200 9300

CMD ["elasticsearch"]
