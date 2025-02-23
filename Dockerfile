# Use official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.10

# Set Elasticsearch to run in single-node mode
ENV discovery.type=single-node

# Reduce memory allocation to fit Railway's limits
ENV ES_JAVA_OPTS="-Xms256m -Xmx256m"

# Disable X-Pack security to reduce memory load
ENV xpack.security.enabled=false

# Expose Elasticsearch ports
EXPOSE 9200 9300

# Start Elasticsearch
CMD ["elasticsearch"]
