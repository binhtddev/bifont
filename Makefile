.PHONY: pack build prepare
pack: build
	rm -f bifont.zip
	cd out && zip ../bifont.zip *

prepare:
	uv tool install opentype-feature-freezer

build:
	rm -rf out
	mkdir out
	pyftfeatfreeze -R 'Cascadia Code/Bifont' src/CascadiaCode.ttf out/bifont.ttf
	pyftfeatfreeze -f 'ss01' -R 'Cascadia Code/Bifont' src/CascadiaCodeItalic.ttf out/bifont-italic.ttf
