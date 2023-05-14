#!/bin/bash

rm apidoc.zip

# Delete build  directory
rm -rf optacut/build

# Generate build
docker run --rm --name slate -v $(pwd)/optacut/build:/srv/slate/build -v $(pwd)/optacut/source:/srv/slate/source slatedocs/slate build

# Copy Content of build directory
rm -rf public-html/optacut
mkdir public-html/optacut
cp -r optacut/build/* public-html/optacut/

zip -r apidoc.zip public-html/*