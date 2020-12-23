export image="tbshare"
export version="latest"
#npm run linux
docker build -t registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version --no-cache  -f Dockerfile .

docker push  registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version

docker tag  registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version  edgora/$image:$version
docker push edgora/$image:$version

export image="tbshare-web"
export version="latest"
docker build -t registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version --no-cache  -f web.Dockerfile .

docker push  registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version

docker tag  registry.cn-beijing.aliyuncs.com/edgora-oss/$image:$version  edgora/$image:$version
docker push edgora/$image:$version
