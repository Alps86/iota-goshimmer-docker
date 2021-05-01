## Info
This setup only works with a correct domain.

## install docker
```console
curl -LO https://raw.githubusercontent.com/Alps86/iota-goshimmer-docker/master/setup.sh
chmod +x setup.sh
./setup.sh
```

### change the config
```console
cd /opt/goshimmer
./config.sh
```

## start node
```console
service goshimmer start
```

## stop node
```console
service goshimmer stop
```

## visit the dashboard
```console
https://example.com
```
