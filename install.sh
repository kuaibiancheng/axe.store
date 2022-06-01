set -e

config_axe_store_repo="https://github.com/kuaibiancheng/axe.store"
config_tmp_repo="/tmp/$(uuidgen)"

download() {
  echo "未连上 github 或拉取速度慢，请自行解决网络问题后重新执行安装命令"
  git clone --depth=1 "$config_axe_store_repo" "$config_tmp_repo"
#   用本地化的修改后的仓库
#   cp -r . $config_tmp_repo
}

prepare() {
    sudo rm -rf /usr/local/axe/meta
    sudo rm -rf /usr/local/axe/bin/store
}

check() {
    if should_install_git; then
        printf "You must install Git before installing Axe.store"
        exit 1
    fi

    version=$(/usr/bin/sw_vers -productVersion)
    major_version=$(echo $version |  cut -d'.' -f 1)
    middle_version=$(echo $version |  cut -d'.' -f 2)
    if [ $major_version -ne 12 ] && [ $major_version -ne 11 ]
    then
        if [ $major_version -ne 10 ] || [ $middle_version -lt 14 ]
        then
            echo "store.axe do not provide support for MacOS $version. We provide support for MacOS 10.14, 10.15, 11 and 12."
            exit 1
        fi
    fi
}

should_install_git() {
  if [[ $(command -v git) ]]; then
    return 1
  fi
}

init_config_file() {
    mv /usr/local/axe/meta/bin/axe_store_config_template.gua /usr/local/axe/axe_store_config.gua
}

install() {
    sudo mkdir -p /usr/local/axe/bin
    sudo mkdir -p /usr/local/axe/meta/bin
    sudo chown -R `whoami` /usr/local/axe
    cp -r "$config_tmp_repo"/* /usr/local/axe/meta/bin
    chmod +x /usr/local/axe/meta/bin/store.gua
    ln -sf /usr/local/axe/meta/bin/store.gua /usr/local/axe/bin/store.axe
    sudo sh -c "echo /usr/local/axe/bin >> /etc/paths"
}

install_gualang() {
    cp -r "$config_tmp_repo"/gualang/* /usr/local/axe/meta
    chmod +x /usr/local/axe/meta/gualang
}

set_env_path() {
    export PATH="$PATH:/usr/local/axe/bin"
}

exec_current_shell() {
    exec $SHELL
}


clean() {
    rm -rf $config_tmp_repo
}

hint() {
    echo "🍉🍉🍉 install store.axe successfully"
    echo "🍉🍉🍉 usage: store.axe get/sou qq"
    echo "🍉🍉🍉 help: store.axe help"
}

call_gualang() {
    sudo /usr/local/axe/meta/gualang "$config_tmp_repo/setup.gua" `whoami`
    sudo chown -R `whoami` /usr/local/axe
}

report() {
    version=$(cat /usr/local/axe/meta/bin/version)
    curl "http://119.45.136.45:4000/?version=$version"
}

__main() {
    check
    prepare
    download
    install
    install_gualang
    init_config_file
    call_gualang
    clean
    set_env_path
    # report
    hint
    exec_current_shell
}

__main
