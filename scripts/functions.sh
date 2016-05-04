function create_dev_machine(){
    docker-machine --driver=virtualbox --virtualbox-memory "4096" --virtualbox-cpu-count "3" dev;
}

function envdocker(){
	eval $(docker-machine env dev)
}

function docker_clean_volumes(){
  docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/docker:/var/lib/docker martin/docker-cleanup-volumes
}

function remove_untagged_images(){
  docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
}
