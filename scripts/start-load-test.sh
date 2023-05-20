#~!/bin/bash

docker run --rm \
  --env-file .env \
  -i grafana/k6 \
  run \
    --vus 15 \
    --duration 5m \
    --out statsd - < average-load.js

# The above command will run the load test for 5 minutes with 15 virtual users.