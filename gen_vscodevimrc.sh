#!/usr/bin/env bash

script_dir="$(cd "$(dirname "$0")" && pwd)"
gen_path="${HOME}/.vscodevimrc"

cat "${script_dir}/helix.vim/helix.vim" > "${gen_path}"

sed -i "/noremap % <nop>/s/^/\" /" "${gen_path}"
sed -i "/noremap f <nop>/s/^/\" /" "${gen_path}"
sed -i "/noremap gn/s/^/\" /" "${gen_path}"
sed -i "/noremap gp/s/^/\" /" "${gen_path}"
sed -i "/noremap = <nop>/s/^/\" /" "${gen_path}"
sed -i "/noremap n /s/^/\" /" "${gen_path}"
sed -i "/noremap <Space>y /s/^/\" /" "${gen_path}"
sed -i "/noremap <Space>Y /s/^/\" /" "${gen_path}"
sed -i "/noremap N /s/^/\" /" "${gen_path}"
sed -i "/noremap < <nop>/s/^/\" /" "${gen_path}"
sed -i "/noremap > <nop>/s/^/\" /" "${gen_path}"
sed -i "/noremap \* /s/^/\" /" "${gen_path}"

cat "${script_dir}/common.vim" >> "${gen_path}"
cat "${script_dir}/vscode.vim" >> "${gen_path}"
