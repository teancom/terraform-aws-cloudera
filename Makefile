.PHONY: all plan apply destroy

all: plan apply

plan:
	terraform get -update
	terraform plan -out terraform.tfplan

apply:
	terraform apply 

destroy:
	terraform plan -destroy -out terraform.tfplan
	terraform apply terraform.tfplan

clean:
	rm -f terraform.tfplan
	rm -f terraform.tfstate
