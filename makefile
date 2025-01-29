.PHONY: venv install deactivate clean

# Cria o ambiente virtual
venv:
	python3 -m venv venv
	

# Instala os pacotes no ambiente virtual
install: venv
	venv/bin/pip install --upgrade pip
	venv/bin/pip install meltano cookiecutter poetry ensurepath
 
# Instruções para desativar o ambiente virtual
deactivate:
	@echo "Para desativar o ambiente virtual, execute: 'deactivate' no terminal"

version:
	which meltano
	meltano --version

	which cookiecutter
	cookiecutter --version

	which poetry
	poetry --version

	which ensurepath
	ensurepath --version


# Limpa o ambiente virtual removendo o diretório 'venv'
clean:
	rm -rf venv
	@echo "Ambiente virtual removido com sucesso!"

create-directory:
	cookiecutter https://github.com/meltano/sdk --directory="cookiecutter/tap-template"

