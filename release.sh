#!/usr/bin/env bash

# ---------------------------------------------------------------------------
# This script archives all files needed by ConTeXt to typeset a document.
# Included are a variety of document styles.
# ---------------------------------------------------------------------------

echo "Create theme packs"
rm -f theme-packs.zip
git archive HEAD --prefix=themes/ --format=zip -o theme-packs.zip

