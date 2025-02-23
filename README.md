# EmailTrackerPro Elasticsearch Service

This repository contains the Elasticsearch service configuration for EmailTrackerPro.

## Configuration

The service is configured to run as a single node with the following specifications:
- Elasticsearch version: 7.17.10
- Memory allocation: 512MB min, 512MB max
- Security: Disabled for development (enable in production)
- Ports: 9200 (HTTP), 9300 (Transport)

## Deployment

This service is designed to be deployed on Railway.app.

### Environment Variables
- `ELASTICSEARCH_HOST`: http://0.0.0.0:9200
- `ES_JAVA_OPTS`: -Xms512m -Xmx512m
- `discovery.type`: single-node
- `xpack.security.enabled`: false

## Usage

After deployment, the service will be available at the Railway-provided URL. Use this URL in your main EmailTrackerPro application's `ELASTICSEARCH_URL` environment variable. 