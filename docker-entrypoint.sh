#!/bin/bash

set -euo pipefail
set -o errexit
set -o errtrace
IFS=$'\n\t'


mkdir -p ${MNT_POINT}
echo "${ACCESS_KEY}:${SECRET_KEY}" > /etc/s3fs-credentials
chmod 0400 /etc/s3fs-credentials
/usr/bin/s3fs -f -d ${S3_BUCKET} ${MNT_POINT} -o url=${S3_URL} -o use_path_request_style,allow_other,retries=5,nonempty,passwd_file=/etc/s3fs-credentials

