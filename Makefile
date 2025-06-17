.PHONY: prepare deploy lint

prepare:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini deploy.yml --tags deploy

lint:
	ansible-lint playbook.yml --exclude ./tmp/
	ansible-lint deploy.yml --exclude ./tmp/

check: lint prepare