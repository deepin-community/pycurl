#!/bin/sh

for py in $(py3versions -s)
do
    $py --version
    make do-test PYTHON=$py PYTEST=pytest-3 PYTEST_ADDOPTS="--ignore examples -m 'not online'" PYFLAKES=pyflakes3 PYCURL_VSFTPD_PATH=/usr/sbin/vsftpd
done
