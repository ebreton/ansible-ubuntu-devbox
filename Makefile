all:
ifndef tags
	ansible-playbook -i hosts site.yml
else
	ansible-playbook -i hosts site.yml -t $(tags)
endif

docker:
	ansible-playbook -i hosts site.yml -t docker

update:
	ansible-playbook -i hosts site.yml -t update