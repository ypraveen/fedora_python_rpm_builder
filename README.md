# A fedora based container to build RPMs of python packages

## Why do I need this?

If you build an RPM package using "python setup.py bdist_rpm" or "python setup.py bdist --format=rpm"
on an Ubuntu based machine, then the RPM created places your python code into /usr/local/lib/pythonXX/dist-packages.
$Unfortunately that path (which is good for Ubuntu distribution) is not appropriate for Fedora/RedHat machines.

This container is to help create RPMs that place your python code into /usr/lib/pythonXX/site-packages.

## How to use?

docker run -it -v /home/ypraveen/mycode:/root/mycode ypraveen/fedora_python_rpm_builder sh -c "cd /root/mycode && python setup.py bdist_rpm"
