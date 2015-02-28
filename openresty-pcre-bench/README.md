## Setup

```
docker build -t local/openresty-pcre-bench .
docker run -it -p 89:80 local/openresty-pcre-bench /opt/openresty/nginx/sbin/nginx

# curl
curl http://xxx.xxx.xxx.xxx:89/lua

# attack
ab -c 10 -n 30000 -k http://xxx.xxx.xxx.xxx:89/lua/string_match?c=10
```
