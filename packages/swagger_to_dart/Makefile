g:
	fvm dart run build_runner build --delete-conflicting-outputs

s:
	make -C example s

delete-tag:
	git tag -d v$(shell yq e '.version' pubspec.yaml)

publish:
	git tag -fa v$(shell yq e '.version' pubspec.yaml) -m "Release" && git push --tags -f