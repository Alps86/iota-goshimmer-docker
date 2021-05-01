## Info
This setup only works with a correct domain.

## install docker
```console
curl -LO https://raw.githubusercontent.com/Alps86/iota-hornet-docker/master/setup.sh
chmod +x setup.sh
./setup.sh
```

### change the config
```console
cd /opt/hornet
docker-compose run pwdhash
./config.sh
```

## start node
```console
service hornet start
```

## stop node
```console
service hornet stop
```

## visit the dashboard
```console
https://example.com
```
