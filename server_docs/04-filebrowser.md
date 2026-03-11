# Filebrowser Setup

## Created storage folder
```bash
mkdir -p /home/bmacintyre/server_storage
```

## First attempt (wrong folder path — removed)
```bash
docker run -d \
  -p 8080:80 \
  --name filebrowser \
  --restart always \
  -v ~/files:/srv \
  -v ~/filebrowser.db:/database.db \
  filebrowser/filebrowser:latest
```

### Removed first attempt
```bash
docker stop filebrowser
docker rm filebrowser
rm ~/filebrowser.db
```

## Final working container
With correct file path to existing server storage.
```bash
docker run -d \
  -p 8080:80 \
  --name filebrowser \
  --restart always \
  -v /home/bmacintyre/server_storage:/srv \
  -v /home/bmacintyre/filebrowser.db:/database.db \
  filebrowser/filebrowser:latest
```

## Checked logs for generated password
```bash
docker logs filebrowser
```

## Access
- URL: `http://192.168.1.10:8080`
- Username: `admin`
- Password: generated on first launch (found in docker logs)
- Serving: `/home/bmacintyre/server_storage`
