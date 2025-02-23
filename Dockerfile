# Use official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.10

# Set Elasticsearch to run as a single node
ENV discovery.type=single-node

# Allocate memory for Elasticsearch
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Disable security for now (you can enable it later)
ENV xpack.security.enabled=false

# Expose Elasticsearch ports
EXPOSE 9200 9300

# Start Elasticsearch
CMD ["elasticsearch"] 