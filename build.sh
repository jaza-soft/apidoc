#!/bin/bash

rm apidoc.zip

# Delete build  directory
rm -rf optacut/build
rm -rf optafloor/build

# Generate build
docker run --rm --name optacut -v $(pwd)/optacut/build:/srv/slate/build -v $(pwd)/optacut/source:/srv/slate/source slatedocs/slate build
docker run --rm --name optafloor -v $(pwd)/optafloor/build:/srv/slate/build -v $(pwd)/optafloor/source:/srv/slate/source slatedocs/slate build

# Copy Content of build directory
rm -rf public-html/optacut
rm -rf public-html/optafloor

mkdir public-html/optacut
mkdir public-html/optafloor

cp -r optacut/build/* public-html/optacut/
cp -r optafloor/build/* public-html/optafloor/

zip -r apidoc.zip public-html/*