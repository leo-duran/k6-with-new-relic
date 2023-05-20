docker run \
  --rm \
  --name newrelic-statsd \
  --hostname $(hostname) \
  --env-file .env \
  --publish 8125:8125/udp \
  newrelic/nri-statsd:latest