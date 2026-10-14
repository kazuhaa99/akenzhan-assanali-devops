# akenzhan-assanali-devops

DevOps laboratory work: Linux, Git, Docker, Jenkins.

Student: Assanali Akenzhan  
Group: IT2-2313  
Student ID: 38330

## Structure

```
app/          - python application
scripts/      - bash scripts
config/       - configuration
logs/         - logs (ignored by git)
backup/       - backups (ignored by git)
```

## Run

```bash
./scripts/Akenzhan_Assanali_system.sh
docker build -t akenzhan-assanali-devops .
docker run --name akenzhan-assanali-container akenzhan-assanali-devops
docker compose up -d
```
