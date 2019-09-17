all: syntax-check
	ansible-playbook --ask-pass --ask-become-pass --diff -i hosts site.yml

dry-run: syntax-check
	ansible-playbook --ask-pass --ask-become-pass --check --diff -i hosts site.yml

ping:
	ansible all --ask-pass --ask-become-pass -i hosts -m ping

syntax-check:
	ansible-playbook --syntax-check -i hosts site.yml

.PHONY: all dry-run ping syntax-check
