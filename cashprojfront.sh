#!/bin/bash
docker stop Cash-Proj-C-1
docker rm Cash-Proj-C-1
docker build -t cash-proj-f .
docker run -i --name Cash-Proj-C-1 --network=gomatha --ip 192.168.1.60  -p 2727:2727  cash-proj-f /bin/bash
docker run -it --name Cash-Proj-C-1 cash-proj-f /bin/bash
docker start Cash-Proj-C-1
docker exec Cash-Proj-C-1 ./startup.sh
