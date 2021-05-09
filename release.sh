#!/usr/bin/env bash

# ---------------------------------------------------------------------------
# This script archives all files needed by ConTeXt to typeset a document.
# Included are a variety of document styles.
# ---------------------------------------------------------------------------

echo "Create theme pack"
rm -f theme-pack.zip
git archive HEAD --prefix=themes/ --format=zip -o theme-pack.zip

