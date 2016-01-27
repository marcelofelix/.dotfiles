function create_dev_machine(){
    docker-machine --driver=virtualbox dev;
}

function envdocker(){
	eval $(docker-machine env dev)
}
