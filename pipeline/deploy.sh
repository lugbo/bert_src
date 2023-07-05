#! /usr/bin/env sh

set -e

echo "executing $0 {"

rm -rf bert_webserver/
git clone https://$MACHINE_USER_TOKEN@github.com/lugbo/bert_webserver.git
cd bert_webserver/
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cp ../snippets/index.html .
git add --all
git commit -m "$(date)" || true
git push
cd ..
rm -rf bert_webserver/
echo "done $0 }"