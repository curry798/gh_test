# shellcheck shell=sh disable=SC3043

# https://github.com/madler/zlib
# zig cc 编译不了
(
    x curl -LO https://github.com/madler/zlib/archive/refs/tags/v"${version:-1.3}".tar.gz
    tar xzf v"${version:-1.3}".tar.gz
    cd zlib-"${version:-1.3}" && {
        ./configure --prefix="${PREFIX}"
        make
        make install
    }
)
