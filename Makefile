install_role:
		ansible-galaxy install -r requirements.yml

install_pip:
		ansible-playbook playbook.yml -i inventory.ini -u root -vv -t install_pip

install_redmine:
		ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password-file -t create_env,install_redmine -u root -vv
