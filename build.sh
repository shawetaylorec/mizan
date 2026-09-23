#!/bin/sh
# The site serves its own copy of the app, since GitHub Pages only
# publishes what is inside docs/. Run this after changing index.html.
set -e
cd "$(dirname "$0")"
cp index.html docs/app.html
echo "docs/app.html updated"
