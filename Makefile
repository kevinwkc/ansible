ans:
	docker pull ansible/ansible-runner

run:
	#https://ansible-runner.readthedocs.io/en/latest/standalone.html
	docker run -it --rm --name my-ansible --env-file .env -v $(shell pwd):/data ansible/ansible-runner bash

clean:
	-docker stop my-ansible
	-docker rm my-ansible

play:
	ansible-playbook site.yml