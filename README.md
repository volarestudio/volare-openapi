# Volare Studio OpenAPI v3 schemas
This repo contains useful and reusable schemas to implement REST APIs
distributed via github pages.

## Getting the specs

Latest master is available at:

- https://volarestudio.github.io/volare-openapi/master/definitions.yaml

Tagged specs are here:

- https://volarestudio.github.io/volare-openapi/0.0.6/definitions.yaml


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

## Building the specs

Every commit is tested via the `tox` python framework.

master and tags trigger `make ghpages` which:

- generates definitions.yaml
- push it to gh-pages branch, under $tag/definitions.yaml

