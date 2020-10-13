# HackademyCTF-v1
Challenges for the Hackademy CTF v1

```bash
docker images |grep roeeyn | awk '{print $1}' | while read -r line; do docker push "$line"; done;
```
