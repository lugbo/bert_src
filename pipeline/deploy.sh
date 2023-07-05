echo "executing $0 {"

rm -rf bert_webserver/
git clone https://$MACHINE_USER_TOKEN@github.com/lugbo/bert_webserver.git
cd bert_webserver/
cp ../snippets/index.html .
git add --all
git commit -m "$(date)" || true
git push
cd ..
rm -rf bert_webserver/
echo "done $0 }"