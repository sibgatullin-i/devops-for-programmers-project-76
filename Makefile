install_role:
		ansible-galaxy install -r requirements.yml

install_pip:
		ansible-playbook playbook.yml -i inventory.ini -u root -vv
