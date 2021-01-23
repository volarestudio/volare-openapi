# Volare Studio OpenAPI v3 schemas
This repo contains useful and reusable schemas to implement REST APIs
distributed via github pages.

## Getting the specs

Latest master is available at:

- https://volarestudio.github.io/volare-openapi/master/definitions.yaml

Specs are assebled from the following directories:

```
docs/
├── headers             # HTTP Headers
├── parameters          # HTTP query parameters
├── responses           # Responses
└── schemas             # Various schema files
    ├── money.yaml
    ├── ...
    └── problem.yaml
```

## Install

For installing dependencies with **virtualenv**:

`sh install.sh`

## Run

For generating **docs/definitions.yaml**:

`python build.py`
