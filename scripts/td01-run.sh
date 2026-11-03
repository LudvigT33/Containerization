
#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
. scripts/course-env.sh

docker run -d \
  --name td01-web \
  --label course.lab=TD01 \
  --label course.environment=course-lab \
  --restart no \
  -p 127.0.0.1:8080:8080 \
  "$NGINX_IMAGE"