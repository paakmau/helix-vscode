# README

```sh
git clone https://github.com/paakmau/helix-vscode.git
cd helix-vscode

git submodule update --init --recursive
```

生成 `.vimrc`：

```sh
script_dir="$(cd "$(dirname "$0")" && pwd)"

echo "source ${script_dir}/helix.vim/helix.vim" > "${HOME}/.vimrc"
echo "source ${script_dir}/common.vim" >> "${HOME}/.vimrc"
```

生成 `.vscodevimrc`：

```sh
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
sed -i "/noremap gd /s/^/\" /" "${gen_path}"
sed -i "/noremap B /s/^/\" /" "${gen_path}"

cat "${script_dir}/common.vim" >> "${gen_path}"
cat "${script_dir}/vscode.vim" >> "${gen_path}"
```
