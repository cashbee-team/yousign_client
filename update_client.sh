#!/bin/sh

yousign_url=https://swagger.yousign.com/swagger.json
openapi_path=yousign_openapi.json

echo "[INFO] Generate client"
swagger-codegen generate -i $openapi_path -l ruby -o . -c config.json
