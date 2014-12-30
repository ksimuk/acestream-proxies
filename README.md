acestream-proxies
=================

acestream engine + P2pProxy + TTVProxy


build an image
``` 
docker build -t acestream ./
```

start server:
```
docker run --rm --net=host -t acestream mono ~/TTVProxy/TTVProxy_lin.exe -u <username> -p <password> 
docker run --rm --net=host -t acestream mono ~/P2pProxy/P2pProxy_console.exe -u <username> -p <password> 
```
