
if [ ! -d ansible ]
then
    mkdir -p ansible/{group_vars/{box,acc,dev,test,acc,perf,prod,data},host_vars,inventories,roles,galaxy_roles,files}
fi

if ! command -v virtualenv > /dev/null
then
    # For linking PyCurl
    brew install python@2 || /usr/bin/true
    brew reinstall openssl
    export PYCURL_SSL_LIBRARY=openssl
    export LDFLAGS=-L/usr/local/opt/openssl/lib
    export CPPFLAGS=-I/usr/local/opt/openssl/include

    # pip is the package manager for python
    /usr/local/bin/pip2 install --upgrade pip
    /usr/local/bin/pip2 install --upgrade setuptools
    /usr/local/bin/pip2 install virtualenv
fi

if [ ! -d ansible/.venv ]
    then
    /usr/local/bin/virtualenv ansible/.venv
    . ansible/.venv/bin/activate
    pip2 install --no-cache-dir -r ansible_pip.txt
fi

echo 'export VIRTUAL_ENV_DISABLE_PROMPT=true'
echo '. ansible/.venv/bin/activate'

