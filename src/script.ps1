pip3 install requests
echo "TEST" >> test_mal
git add .
git commit -m "MAL COMMIT"
git push origin main
python3 ./src/inject.py
