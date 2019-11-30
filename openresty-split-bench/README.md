## Run Server

```
docker build -t local/openresty-split-bench .
docker run -it -p 89:80 local/openresty-split-bench
```

## Benchmark

```
# curl
curl 'http://localhost:89/lua/lua_split_a?c=10'
```
