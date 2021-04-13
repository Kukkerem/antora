install:
	npm i @antora/cli@2.3
	$$(npm bin)/antora -v
	npm i @antora/site-generator-default@2.3

upgrade:
	rm -rf node_modules package-lock.json
	npm i

run:
	$$(npm bin)/antora --fetch antora-playbook.yml

webserver:
	npm i http-server
	$$(npm bin)/http-server build/site -c-1 -p 5555