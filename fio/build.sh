# shellcheck shell=sh disable=SC3043

(
    x curl -LO https://github.com/x-cmd-sourcecode/fio/archive/refs/tags/fio-"${version}".tar.gz
    tar xvf fio-"${version}".tar.gz 
    cd fio-fio-"${version}"/ && {
        local os_name
        os_name="$(x os name)"
        if [ "${os_name}" = "darwin" ]; then
            ./configure --prefix="${PREFIX}"
        else
            ./configure --build-static --prefix="${PREFIX}"
        fi
        make
        make install
    }
)