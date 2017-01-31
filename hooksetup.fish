#!/usr/local/bin/fish

git hooks --install
mkdir .githooks
cp -r $HOME/Projects/Extensions/simple-linter-git-hooks/pre-commit ./.githooks/
echo ".githooks" | tee -a .git/info/exclude
git hooks
