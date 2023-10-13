#!/bin/bash
name=$(basename $PWD | sed 's/ansible-role\.//g')
echo $name

if [[ $(uname) == "Linux" ]] ; then
  for file in $(find . -type f ! -path './.git/*'); do
    sed -i 's/replace_name/'$name'/g' $file
  done
elif [[ $(uname) == "Darwin" ]] ; then
  find . -type f ! -path './.git/*' -exec sed -i '' -e "s/replace_name/$name/g" {} \;
fi

mv _github .github
rm init.sh
git add .
git commit -m "Replaced placeholders from template"
