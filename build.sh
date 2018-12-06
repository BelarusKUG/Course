#!/bin/bash

docker run --rm \
    --user "$(id -u):$(id -g)" \
    -v $(pwd):/documents/ \
    asciidoctor/docker-asciidoctor \
    asciidoctor index.adoc

mv ./index.html ./docs/index.html
