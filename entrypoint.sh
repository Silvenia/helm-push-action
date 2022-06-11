#!/bin/sh

set -e

helm registry login $1 --username $2 --password $3
helm package $4
FILE_NAME=$(ls | grep ecommerce-)
VERSION=${FILE_NAME#*-}
VERSION=${VERSION%.*}

helm push $FILE_NAME oci://$1/$5
echo ::set-output name=chartVersion::"$VERSION"