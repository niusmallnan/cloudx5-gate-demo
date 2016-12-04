
docker run -d --name ga-proxy -p 18080:80 \
            -v `pwd`/conf.d/:/etc/nginx/conf.d/ \
            nginx

docker run -d --name login -p 10000:80 \
            -v `pwd`/login/:/usr/share/nginx/html \
            nginx
docker run -d --name zonea -p 10001:80 \
            -v `pwd`/zonea/:/usr/share/nginx/html \
            nginx
docker run -d --name zoneb -p 10002:80 \
            -v `pwd`/zoneb/:/usr/share/nginx/html \
            nginx

# curl -H "X-CLOUDX5-ZONE: zona" http://127.0.0.1:18080
