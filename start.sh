#!/bin/bash

set -o nounset

mlflow db upgrade $DB_URI

mlflow server \
    --backend-store-uri $DB_URI \
    --host 0.0.0.0 \
    --port 80 \
    --default-artifact-root s3://${S3_BUCKET}/artifacts