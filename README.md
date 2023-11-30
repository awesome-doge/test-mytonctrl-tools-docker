# test-mytonctrl-tools-docker
Test installation in different environments, including centos, debian, ubuntu....

| operating system       | support |
| ---------------------- |:-------:|
| ubuntu:16.04           |    x    |
| ubuntu:18.04           |    x    |
| ubuntu:20.04           |   ✅    |
| ubuntu:22.04           |   ✅    |
| ubuntu:23.10           |    x    |
| debian:8               |    x    |
| debian:9               |    x    |
| debian:10              |    x    |
| debian:11              |   ✅    |
| debian:12              |    x    |
| centos:centos7.9.2009  |   x    |


```
docker pull debian:8
docker pull debian:9
docker pull debian:10
docker pull debian:11
docker pull debian:12

docker pull ubuntu18.04
docker pull ubuntu20.04
docker pull ubuntu22.04
docker pull ubuntu23.10

docker pull centos:centos7.9.2009
# docker pull centos:centos8.4.2105

# docker pull archlinux:base
```


```
cd test-all-install-full

sudo docker build -t test-mytonctrl-install-full:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile .  
sudo docker build -t test-mytonctrl-install-full:ubuntu23.10 -f build-ubuntu:23.10.Dockerfile .  

sudo docker build -t test-mytonctrl-install-full:debian8 -f build-debian:8.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian9 -f build-debian:9.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian10 -f build-debian:10.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian11 -f build-debian:11.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian12 -f build-debian:12.Dockerfile  . 

# sudo docker build -t test-mytonctrl-install-full:archlinuxbase -f build-archlinux:base.Dockerfile  . 

sudo docker build -t test-mytonctrl-install-full:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . 
# sudo docker build -t test-mytonctrl-install-full:centos8.4.2105 -f build-centos:centos8.4.2105.Dockerfile  . 
```

## test-all-install-full
2023 11 30


ubuntu18.04
```
147.5 Collecting psutil
148.4   Downloading https://files.pythonhosted.org/packages/2d/01/beb7331fc6c8d1c49dd051e3611379bfe379e915c808e1301506027fce9d/psutil-5.9.6.tar.gz (496kB)
148.9 Collecting fastcrc
149.2   Downloading https://files.pythonhosted.org/packages/5c/65/f8a9f8ab2624142f1b1d34edb9fed3c147e435f06dd33eda905a62200b2b/fastcrc-0.2.1.tar.gz
149.3     Complete output from command python setup.py egg_info:
149.3     Traceback (most recent call last):
149.3       File "<string>", line 1, in <module>
149.3       File "/tmp/pip-build-e_y6vxsb/fastcrc/setup.py", line 4, in <module>
149.3         from setuptools_rust import Binding, RustExtension
149.3     ModuleNotFoundError: No module named 'setuptools_rust'
149.3
149.3     ----------------------------------------
149.3 Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-e_y6vxsb/fastcrc/
```
ubuntu20.04
```
pass
```
ubuntu22.04
```
pass
```
ubuntu23.10
```
(Reading database ... 28652 files and directories currently installed.)
131.4 Preparing to unpack .../ninja-build_1.11.1-2_arm64.deb ...
131.4 Unpacking ninja-build (1.11.1-2) ...
131.4 Setting up ninja-build (1.11.1-2) ...
131.6 error: externally-managed-environment
131.6
131.6 × This environment is externally managed
131.6 ╰─> To install Python packages system-wide, try apt install
131.6     python3-xyz, where xyz is the package you are trying to
131.6     install.
131.6
131.6     If you wish to install a non-Debian-packaged Python package,
131.6     create a virtual environment using python3 -m venv path/to/venv.
131.6     Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
131.6     sure you have python3-full installed.
131.6
131.6     If you wish to install a non-Debian packaged Python application,
131.6     it may be easiest to use pipx install xyz, which will manage a
131.6     virtual environment for you. Make sure you have pipx installed.
131.6
131.6     See /usr/share/doc/python3.11/README.venv for more information.
131.6
131.6 note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
131.6 hint: See PEP 668 for the detailed specification.
------
```

debian8
```
 > [2/6] RUN apt-get update:
4.149 Ign http://security.debian.org jessie/updates InRelease
4.412 Ign http://deb.debian.org jessie InRelease
4.451 Ign http://security.debian.org jessie/updates Release.gpg
4.467 Ign http://deb.debian.org jessie-updates InRelease
4.524 Ign http://security.debian.org jessie/updates Release
4.774 Ign http://deb.debian.org jessie Release.gpg
4.822 Err http://security.debian.org jessie/updates/main armhf Packages
4.822
4.837 Ign http://deb.debian.org jessie-updates Release.gpg
5.134 Err http://security.debian.org jessie/updates/main armhf Packages
5.134
5.158 Ign http://deb.debian.org jessie Release
5.217 Ign http://deb.debian.org jessie-updates Release
5.446 Err http://security.debian.org jessie/updates/main armhf Packages
5.446
5.755 Err http://security.debian.org jessie/updates/main armhf Packages
5.755
6.112 Err http://security.debian.org jessie/updates/main armhf Packages
6.112   404  Not Found [IP: 151.101.66.132 80]
9.395 Err http://deb.debian.org jessie/main armhf Packages
9.395   404  Not Found
9.968 Err http://deb.debian.org jessie-updates/main armhf Packages
9.968   404  Not Found
9.997 W: Failed to fetch http://security.debian.org/debian-security/dists/jessie/updates/main/binary-armhf/Packages  404  Not Found [IP: 151.101.66.132 80]
9.997
9.998 W: Failed to fetch http://deb.debian.org/debian/dists/jessie/main/binary-armhf/Packages  404  Not Found
9.998
9.998 W: Failed to fetch http://deb.debian.org/debian/dists/jessie-updates/main/binary-armhf/Packages  404  Not Found
9.998
9.998 E: Some index files failed to download. They have been ignored, or old ones used instead.
```
debian9
```
 > [2/6] RUN apt-get update:
0.183 Ign:1 http://security.debian.org/debian-security stretch/updates InRelease
0.231 Ign:2 http://security.debian.org/debian-security stretch/updates Release
0.279 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
0.329 Ign:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
0.378 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
0.428 Ign:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
0.437 Ign:5 http://deb.debian.org/debian stretch InRelease
0.480 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
0.488 Ign:6 http://deb.debian.org/debian stretch-updates InRelease
0.534 Ign:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
0.536 Ign:7 http://deb.debian.org/debian stretch Release
0.600 Ign:8 http://deb.debian.org/debian stretch-updates Release
0.600 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
0.668 Ign:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
0.909 Ign:9 http://deb.debian.org/debian stretch/main arm64 Packages
0.969 Ign:10 http://deb.debian.org/debian stretch/main all Packages
0.978 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
1.028 Ign:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
1.273 Ign:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
1.321 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
1.340 Ign:3 http://security.debian.org/debian-security stretch/updates/main all Packages
1.398 Err:4 http://security.debian.org/debian-security stretch/updates/main arm64 Packages
1.398   404  Not Found [IP: 151.101.66.132 80]
1.895 Ign:9 http://deb.debian.org/debian stretch/main arm64 Packages
2.148 Ign:10 http://deb.debian.org/debian stretch/main all Packages
2.724 Ign:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
2.772 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
3.329 Ign:9 http://deb.debian.org/debian stretch/main arm64 Packages
3.385 Ign:10 http://deb.debian.org/debian stretch/main all Packages
4.013 Ign:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
4.061 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
4.429 Ign:9 http://deb.debian.org/debian stretch/main arm64 Packages
4.481 Ign:10 http://deb.debian.org/debian stretch/main all Packages
4.797 Ign:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
4.851 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
5.155 Ign:9 http://deb.debian.org/debian stretch/main arm64 Packages
5.206 Ign:10 http://deb.debian.org/debian stretch/main all Packages
5.517 Ign:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
5.635 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
5.943 Err:9 http://deb.debian.org/debian stretch/main arm64 Packages
5.943   404  Not Found
5.996 Ign:10 http://deb.debian.org/debian stretch/main all Packages
6.320 Err:11 http://deb.debian.org/debian stretch-updates/main arm64 Packages
6.320   404  Not Found
6.383 Ign:12 http://deb.debian.org/debian stretch-updates/main all Packages
6.395 Reading package lists...
6.407 W: The repository 'http://security.debian.org/debian-security stretch/updates Release' does not have a Release file.
6.407 W: The repository 'http://deb.debian.org/debian stretch Release' does not have a Release file.
6.407 W: The repository 'http://deb.debian.org/debian stretch-updates Release' does not have a Release file.
6.407 E: Failed to fetch http://security.debian.org/debian-security/dists/stretch/updates/main/binary-arm64/Packages  404  Not Found [IP: 151.101.66.132 80]
6.407 E: Failed to fetch http://deb.debian.org/debian/dists/stretch/main/binary-arm64/Packages  404  Not Found
6.407 E: Failed to fetch http://deb.debian.org/debian/dists/stretch-updates/main/binary-arm64/Packages  404  Not Found
6.407 E: Some index files failed to download. They have been ignored, or old ones used instead.
```
debian10
```
53.64               ********************************************************************************
53.64               Requirements should be satisfied by a PEP 517 installer.
53.64               If you are using pip, you can try `pip install --use-pep517`.
53.64               ********************************************************************************
```
debian11
```
pass
```
debian12
```
27.20 Setting up ninja-build (1.11.1-1) ...
27.34 error: externally-managed-environment
27.34
27.34 × This environment is externally managed
27.34 ╰─> To install Python packages system-wide, try apt install
27.34     python3-xyz, where xyz is the package you are trying to
27.34     install.
27.34
27.34     If you wish to install a non-Debian-packaged Python package,
27.34     create a virtual environment using python3 -m venv path/to/venv.
27.34     Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
27.34     sure you have python3-full installed.
27.34
27.34     If you wish to install a non-Debian packaged Python application,
27.34     it may be easiest to use pipx install xyz, which will manage a
27.34     virtual environment for you. Make sure you have pipx installed.
27.34
27.34     See /usr/share/doc/python3.11/README.venv for more information.
27.34
27.34 note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
27.34 hint: See PEP 668 for the detailed specification.
```
centos:centos7.9.2009
```
309.9 WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
310.0 Collecting psutil
311.0   Downloading https://files.pythonhosted.org/packages/2d/01/beb7331fc6c8d1c49dd051e3611379bfe379e915c808e1301506027fce9d/psutil-5.9.6.tar.gz (496kB)
311.5 Collecting fastcrc
311.9   Downloading https://files.pythonhosted.org/packages/5c/65/f8a9f8ab2624142f1b1d34edb9fed3c147e435f06dd33eda905a62200b2b/fastcrc-0.2.1.tar.gz
312.0     Complete output from command python setup.py egg_info:
312.0     Traceback (most recent call last):
312.0       File "<string>", line 1, in <module>
312.0       File "/tmp/pip-build-6zeoq51w/fastcrc/setup.py", line 4, in <module>
312.0         from setuptools_rust import Binding, RustExtension
312.0     ModuleNotFoundError: No module named 'setuptools_rust'
312.0
312.0     ----------------------------------------
312.0 Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-6zeoq51w/fastcrc/
```
