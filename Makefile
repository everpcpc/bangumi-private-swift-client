update:
	curl -sSfLo Sources/BangumiPrivateSwiftClient/openapi.yaml https://next.bgm.tv/p1/openapi.yaml
	gsed -i "s_exclusiveMinimum: 0_exclusiveMinimum: false_g" Sources/BangumiPrivateSwiftClient/openapi.yaml
