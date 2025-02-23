# Use official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.10

# Set Elasticsearch to run in single-node mode
ENV discovery.type=single-node

# Reduce memory usage (Railway has low memory limits)
ENV ES_JAVA_OPTS="-Xms256m -Xmx256m"

# Disable X-Pack security to reduce load
ENV xpack.security.enabled=false

# Expose Elasticsearch ports
EXPOSE 9200 9300

# Start Elasticsearch
CMD ["elasticsearch"]
