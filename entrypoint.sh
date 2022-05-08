#!/bin/sh

set -e

helm registry login $1 --username $2 --password $3
helm package $4
FILE_NAME=$(ls | grep ecommerce-)
helm push $FILE_NAME oci://$1/$5