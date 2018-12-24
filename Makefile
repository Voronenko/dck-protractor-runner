build-layer-0:
	packer build packer_base.json

push-layer-0:
	docker push voronenko/protractor-runner:base_layer


build-layer-1:
	packer build packer_protractor.json

push-layer-1:
	docker push voronenko/protractor-runner:protractor_layer


build-layer-1-debug:
	packer build packer_protractor_debug.json

push-layer-1-debug:
	docker push voronenko/protractor-runner:protractor_layer_debug




build:
	packer build project.json

push:
	docker push voronenko/protractor-runner:latest

build_debug:
	packer build project_debug.json

push_debug:
	docker push voronenko/protractor-runner:debug

