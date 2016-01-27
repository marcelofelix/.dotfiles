function create_dev_machine(){
    docker-machine --driver=virtualbox --virtualbox-memory "4096" --virtualbox-cpu-count "1" dev;
}

function envdocker(){
	eval $(docker-machine env dev)
}
