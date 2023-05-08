info:     ## Info this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up:     ## Up all docker containers.
	@docker-compose -f ./docker-compose.yml up -d --force-recreate