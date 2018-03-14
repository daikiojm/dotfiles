extensions=$(cat ./extensions)

for extension in $extensions; do
  echo "install $extension ..."
  code --install-extension $extension
done
