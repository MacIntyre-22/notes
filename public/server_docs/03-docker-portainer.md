# Docker & Portainer Setup

## Portainer Install

### Created Portainer volume
```bash
docker volume create portainer_data
```

### Ran Portainer container
```bash
docker run -d \
  -p 9000:9000 \
  --name portainer \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:latest
```

### Access
- URL: `http://192.168.1.10:9000`
- Created admin account on first launch
