# Use official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.10

# Set Elasticsearch to run in single-node mode
ENV discovery.type=single-node

# Reduce RAM usage (important for Railway)
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Disable xpack security (for now)
ENV xpack.security.enabled=false

# Expose Elasticsearch ports
EXPOSE 9200 9300

# Start Elasticsearch
CMD ["elasticsearch"]
