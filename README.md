# timemachine-docker
docker-compose.yml for [odarriba/docker-timemachine](https://github.com/odarriba/docker-timemachine)

1. `vi docker-compose.yml` to modify volume
2. Replace "<< host path >>" with the path where you want to actually place the backup file.
```
  services:
    ...
    volumes:
      - <<host path>>:/timemachine
    ...
```
3. `docker-compose up -d`
4. `chmod +x add_user.sh`
5. Run `./add_user.sh` and follow the instructions of script
6. See [odarriba/docker-timemachine#step-5--start-using-it](https://github.com/odarriba/docker-timemachine#step-5--start-using-it)
