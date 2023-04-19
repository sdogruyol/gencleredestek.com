#!/bin/bash
docker-compose run web chmod +x ./install.sh
docker-compose run web ./install.sh
docker-compose up