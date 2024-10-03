# Bangumi Private Swift Client

### download api spec

```shell
curl -Lo Sources/BangumiPrivateSwiftClient/openapi.yaml https://next.bgm.tv/p1/openapi.yaml
gsed -i "s_exclusiveMinimum: 0_exclusiveMinimum: false_g" Sources/BangumiPrivateSwiftClient/openapi.yaml
gsed -i "s_- type: 'null'_- type: null_g" Sources/BangumiPrivateSwiftClient/openapi.yaml
```

### generate client

```shell
swift package plugin generate-code-from-openapi
```

### test

```shell
swift test
```
