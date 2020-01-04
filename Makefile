all:
ifndef tags
	ansible-playbook -i inventory site*.yml
else
	ansible-playbook -i inventory site*.yml -t $(tags)
endif

servers:
ifndef tags
	ansible-playbook -i inventory/servers site-servers.yml
else
	ansible-playbook -i inventory/servers site-servers.yml -t $(tags)
endif

repos:
ifndef tags
	ansible-playbook -i inventory/repos site-repos.yml
else
	ansible-playbook -i inventory/repos site-repos.yml -t $(tags)
endif

docker:
	ansible-playbook -i inventory/servers site-servers.yml -t docker

update:
	ansible-playbook -i inventory/servers site-servers.yml -t update
	ansible-playbook -i inventory/repos site-repos.yml -t update
