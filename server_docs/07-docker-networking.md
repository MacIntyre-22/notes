# Docker Networking

## Created shared network for NPM and containers
```bash
docker network create npm-network
```

## Connected containers to npm-network
```bash
docker network connect npm-network nginx-proxy-manager
docker network connect npm-network portfolio
docker network connect npm-network filebrowser
```

## Disconnected and reconnected portfolio (to resolve stale endpoint)
```bash
docker network disconnect npm-network portfolio
docker network connect npm-network portfolio
```

## Verified container network assignment
```bash
docker inspect portfolio | grep -A 5 npm-network
docker inspect nginx-proxy-manager | grep -A 5 npm-network
docker inspect filebrowser | grep -A 5 npm-network
```

## Tested internal container connectivity
```bash
docker exec nginx-proxy-manager curl http://portfolio:80
```

## Notes
- All containers that need to be accessible via NPM must be on npm-network
- In NPM always use the container name as Forward Hostname
- Always use the internal container port (right side of mapping) not the host port
- When creating new containers in Portainer assign npm-network directly during setup to skip the connect command
- Default Docker networks (bridge, host, none) cannot be deleted
