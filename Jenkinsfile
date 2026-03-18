pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-notes:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    docker stop my-notes || true
                    docker rm my-notes || true
                    docker run -d \
                        --name my-notes \
                        --network npm-network \
                        --restart unless-stopped \
                        my-notes:latest
                '''
            }
        }
    }
}
```

Replace `your-nginx-network` with whatever Docker network your Nginx proxy container is on (you can check with `docker network ls`).

---

## 3. Forgejo Webhook → Jenkins

1. In Jenkins, create a new **Pipeline** job and point it at your Forgejo repo
2. In Forgejo, go to your repo → **Settings → Webhooks → Add Webhook**
3. Set the URL to `http://your-server:8080/generic-webhook-trigger/invoke` (or the standard Jenkins webhook URL)
4. Trigger: **Push events**

Every `git push` to your notes repo will now automatically rebuild and redeploy the container.

---

## 4. Nginx proxy config

Add a new proxy host in your Nginx (or via Portainer if you're using Nginx Proxy Manager) pointing to the `my-notes` container on port 80. Since you're using Cloudflare Zero Trust you can lock it behind an Access policy too.

---

**Quick summary of the flow:**
```
git push → Forgejo webhook → Jenkins pulls & builds Docker image → 
old container swapped out → Nginx serves the new site