#!/bin/bash

docker run -itd --name terraform --rm \
-v $(pwd):/terraform \
-w /terraform --entrypoint sleep \
--env-file ./.env \
hashicorp/terraform infinity

docker exec -it terraform sh
