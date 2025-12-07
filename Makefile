.PHONY: pack build
pack: build
	rm -f bifont.zip
	zip bifont.zip -j out/*

build:
	rm -rf out
	mkdir out
	pyftfeatfreeze -R 'Cascadia Code/Bifont' src/CascadiaCode.ttf out/bifont.ttf
	pyftfeatfreeze -f 'ss01' -R 'Cascadia Code/Bifont' src/CascadiaCode.ttf out/bifont-italic.ttf
