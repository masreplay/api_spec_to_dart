.PHONY: g test goldens s delete-tag publish

g:
	fvm dart run build_runner build

test:
	fvm dart test

goldens:
	UPDATE_GOLDENS=1 fvm dart test -t golden

s:
	make -C example s

delete-tag:
	git tag -d v$(shell yq e '.version' pubspec.yaml)

publish:
	git tag -fa v$(shell yq e '.version' pubspec.yaml) -m "Release" && git push --tags -f
