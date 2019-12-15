build:
	wasm-pack build --target web

build-hosting:
	wasm-pack build --target web
	rm -rf dist
	mkdir dist
	cp index.html dist
	mkdir dist/pkg
	cp pkg/{{project-name}}.js dist/pkg
	cp pkg/{{project-name}}.wasm dist/pkg
