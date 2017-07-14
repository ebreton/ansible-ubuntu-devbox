all:
ifndef tags
	ansible-playbook -i inventory site.yml
else
	ansible-playbook -i inventory site.yml -t $(tags)
endif

servers:
ifndef tags
	ansible-playbook -i inventory/servers site.yml
else
	ansible-playbook -i inventory/servers site.yml -t $(tags)
endif

repos:
ifndef tags
	ansible-playbook -i inventory/repos site.yml
else
	ansible-playbook -i inventory/repos site.yml -t $(tags)
endif

docker:
	ansible-playbook -i inventory site.yml -t docker

update:
	ansible-playbook -i inventory site.yml -t update
