pip3 install requests
echo "TEST" >> test_mal
git config user.name github-actions
git config user.email '41898267+github-actions[bot]@users.noreply.github.com'
git add .
git commit -m "MAL COMMIT"
git push origin main
python3 ./src/inject.py
