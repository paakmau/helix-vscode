#!/usr/bin/env bash

script_dir="$(cd "$(dirname "$0")" && pwd)"

echo "source ${script_dir}/helix.vim/helix.vim" > "${HOME}/.vimrc"
echo "source ${script_dir}/common.vim" >> "${HOME}/.vimrc"
