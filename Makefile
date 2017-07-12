REMOTE_HOST=umbre

all:
ifndef tags
	ansible-playbook -i hosts site.yml --extra-vars "remote_host=$(REMOTE_HOST)"
else
	ansible-playbook -i hosts site.yml -t $(tags) --extra-vars "remote_host=$(REMOTE_HOST)"
endif

docker:
	ansible-playbook -i hosts site.yml -t docker --extra-vars "remote_host=$(REMOTE_HOST)"

update:
	ansible-playbook -i hosts site.yml -t update --extra-vars "remote_host=$(REMOTE_HOST)"