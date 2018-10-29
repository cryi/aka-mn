# AKROMA FULL/BOOT MASTERNODE SETUP © cryon.io 2018

## Automated setup (ubuntu and derivatives with apt & sudo)

0. `cd [path to directory containing this readme]`
1. one of commands below depending of your preference
    `sudo /bin/sh ./configurator --full` # full setup on current user
    `sudo ./configurator --full --user=[user] --port=[port]` # full setup on defined user with specific port (directory location and structure is preserved)
2. register your akroma node on https://akroma.io/
    - setup outputs node info at the end, you can also find it inside file `./data/node.info` (`cat ./data/node.info`)

## Manual setup (other systems)

### WARNING: These steps may differ based on your OS. This setup is recommended ONLY for advanced users.

#### install docker 
0. install docker according to the official documentation (https://docs.docker.com/install/)

1. install docker compose  
    - for linux systems: `curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose`
    - (only on unix based systems) `chmod +x /usr/local/bin/docker-compose`
2.  `docker-compose --version` # Verifying if docker-compose works correctly

#### setup && start masternode
0. set write permissions for user id 1000 for directory `./data`
    - on unix based systems with POSIX shell you can use: `sh ./tools/allow_container_write.sh -f -p ./data`
    - (non default) if you use user remap feature in docker, set allow write permission for user **remap id + 1000** 

1. `docker-compose up -d` # builds and starts masternode

## good to know
- `docker-compose down`     # stops masternode
- `docker-compose up`       # starts masternode with log output into console
- `docker-compose up -d`    # starts masternode in detached mode (no console output)
- `docker-compose logs`     # displays log output from services
- `docker exec --user akroma -it [container id] bash` # opens bash inside container
- `docker ps`               # lists running containers (you can find out container id in left column)
