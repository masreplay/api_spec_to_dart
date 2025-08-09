g:
	fvm dart run build_runner build --delete-conflicting-outputs

s:
	make -C example s

publish:
	git tag -fa "v$(yq -r .version pubspec.yaml)" -m "Release" && git push --tag