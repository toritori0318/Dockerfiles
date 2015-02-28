FROM centos:latest

# all the apt-gets in one command & delete the cache after installing
RUN yum install -y openssl-devel make gcc++ gcc-c++ wget tar zip perl

# pcre
RUN cd /tmp \
 && wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.36.tar.gz \
 && tar zxf pcre-8.36.tar.gz \
 && mv pcre-8.36 /opt/pcre

# openresty
RUN cd /tmp \
 && wget http://openresty.org/download/ngx_openresty-1.7.7.2.tar.gz \
 && tar zxf ngx_openresty-1.7.7.2.tar.gz \
 && cd ngx_openresty-1.7.7.2 \
 && ./configure --with-luajit --prefix=/opt/openresty --with-http_gzip_static_module --with-pcre=/opt/pcre --with-pcre-jit \
 && make \
 && make install \
 && ln -sf /opt/openresty/nginx/sbin/nginx /usr/local/bin/nginx
RUN ln -sf /opt/openresty/luajit/bin/luajit-2.1.0-alpha /opt/openresty/luajit/bin/lua \
 && ln -sf /opt/openresty/luajit/bin/lua /usr/local/bin/lua
ADD nginx.conf /opt/openresty/nginx/conf/nginx.conf
