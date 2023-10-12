#!/bin/sh

for py in $(py3versions -s)
do
    $py --version
    make do-test PYTHON=$py PYTEST="$py -m pytest" PYTEST_ADDOPTS="--ignore examples --ignore .pc -m 'not online'" PYFLAKES="$py -m pyflakes" PYCURL_VSFTPD_PATH=/usr/sbin/vsftpd
done
