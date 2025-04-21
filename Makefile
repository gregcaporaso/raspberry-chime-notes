# helpers
_copy-env-file:
	cp environment-files/readthedocs.yml notes/_static/environment.yml

_copy-data:
	@if [ -d "notes/data/" ]; then \
		cp -r notes/data/ notes/_build/html/data/; \
		echo "Copied data directory."; \
	else \
		echo "notes/data/ not found, skipping copy."; \
	fi

_build-html:
	cd notes && jupyter-book build --html

# main targets

html: _copy-env-file _build-html _copy-data

serve:
	npx serve notes/_build/html/ -p 4000

clean:
	rm -rf notes/_build/html/
