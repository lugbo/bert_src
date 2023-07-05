echo "executing $0 {"

rm -rf bert_webserver/
git clone https://github.com/lugbo/bert_webserver.git
cd bert_webserver/
cp ../snippets/index.html .
git add --all
git commit -m "$(date)"
git push

rm -rf ../bert_webserver/
echo "done $0 }"