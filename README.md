# test-mytonctrl-tools-docker
Test installation in different environments, including centos, debian, ubuntu....

| operating system       | support |
| ---------------------- |:-------:|
| ubuntu:16.04           |    x    |
| ubuntu:18.04           |    x    |
| ubuntu:20.04           |    x    |
| ubuntu:22.04           |    x    |
| debian:8               |    x    |
| debian:9               |    x    |
| debian:10              |    x    |
| debian:11              |    x    |
| debian:12              |    x    |
| archlinux:base         |   ✅    |
| centos:centos7.9.2009  |   ✅    |
| centos:centos8.4.2105  |   ✅    |


```
docker pull debian:8
docker pull debian:9
docker pull debian:10
docker pull debian:11
docker pull debian:12

docker pull ubuntu18.04
docker pull ubuntu20.04
docker pull ubuntu22.04

docker pull centos:centos7.9.2009
docker pull centos:centos8.4.2105

docker pull archlinux:base
```

```
cd test-mytonctrl-installer

sudo docker build -t toninstaller:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . 
sudo docker build -t toninstaller:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . 
sudo docker build -t toninstaller:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile .  

sudo docker build -t toninstaller:debian8 -f build-debian:8.Dockerfile  . 
sudo docker build -t toninstaller:debian9 -f build-debian:9.Dockerfile  . 
sudo docker build -t toninstaller:debian10 -f build-debian:10.Dockerfile  . 
sudo docker build -t toninstaller:debian11 -f build-debian:11.Dockerfile  . 
sudo docker build -t toninstaller:debian12 -f build-debian:12.Dockerfile  . 

sudo docker build -t toninstaller:archlinuxbase -f build-archlinux:base.Dockerfile  . 

sudo docker build -t toninstaller:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . 
sudo docker build -t toninstaller:centos8.4.2105 -f build-centos:centos8.4.2105.Dockerfile  . 
```

```
sudo bash test-all-toninstaller.sh

sudo bash test-all-install-full.sh

sudo bash test-all-install-lite.sh
```


toninstaller:debian10
```
164.0 CMake Error at /usr/share/cmake-3.13/Modules/FindPackageHandleStandardArgs.cmake:137 (message):
164.0   Could NOT find Secp256k1 (missing: SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
164.0 Call Stack (most recent call first):
164.0   /usr/share/cmake-3.13/Modules/FindPackageHandleStandardArgs.cmake:378 (_FPHSA_FAILURE_MESSAGE)
164.0   CMake/FindSecp256k1.cmake:28 (find_package_handle_standard_args)
164.0   crypto/CMakeLists.txt:322 (find_package)
164.0
164.0
164.0 -- Configuring incomplete, errors occurred!
164.0 See also "/usr/bin/ton/CMakeFiles/CMakeOutput.log".
164.0 See also "/usr/bin/ton/CMakeFiles/CMakeError.log".
```


toninstaller:debian11
```
97.67 CMake Error at /usr/share/cmake-3.18/Modules/FindPackageHandleStandardArgs.cmake:165 (message):
97.67   Could NOT find Secp256k1 (missing: SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
97.67 Call Stack (most recent call first):
97.67   /usr/share/cmake-3.18/Modules/FindPackageHandleStandardArgs.cmake:458 (_FPHSA_FAILURE_MESSAGE)
97.67   CMake/FindSecp256k1.cmake:28 (find_package_handle_standard_args)
97.67   crypto/CMakeLists.txt:322 (find_package)
97.67
97.67
97.67 -- Configuring incomplete, errors occurred!
97.67 See also "/usr/bin/ton/CMakeFiles/CMakeOutput.log".
97.67 See also "/usr/bin/ton/CMakeFiles/CMakeError.log".
```

toninstaller:debian12
```
28.29 Reading package lists...
28.58 Building dependency tree...
28.66 Reading state information...
28.77 The following NEW packages will be installed:
28.77   ninja-build
28.88 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
28.88 Need to get 127 kB of archives.
28.88 After this operation, 447 kB of additional disk space will be used.
28.88 Get:1 http://deb.debian.org/debian bookworm/main arm64 ninja-build arm64 1.11.1-1 [127 kB]
29.06 debconf: delaying package configuration, since apt-utils is not installed
29.08 Fetched 127 kB in 0s (678 kB/s)
29.09 Selecting previously unselected package ninja-build.
(Reading database ... 29729 files and directories currently installed.)
29.10 Preparing to unpack .../ninja-build_1.11.1-1_arm64.deb ...
29.10 Unpacking ninja-build (1.11.1-1) ...
29.12 Setting up ninja-build (1.11.1-1) ...
29.26 error: externally-managed-environment
29.26
29.26 × This environment is externally managed
29.26 ╰─> To install Python packages system-wide, try apt install
29.26     python3-xyz, where xyz is the package you are trying to
29.26     install.
29.26
29.26     If you wish to install a non-Debian-packaged Python package,
29.26     create a virtual environment using python3 -m venv path/to/venv.
29.26     Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
29.26     sure you have python3-full installed.
29.26
29.26     If you wish to install a non-Debian packaged Python application,
29.26     it may be easiest to use pipx install xyz, which will manage a
29.26     virtual environment for you. Make sure you have pipx installed.
29.26
29.26     See /usr/share/doc/python3.11/README.venv for more information.
29.26
29.26 note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
29.26 hint: See PEP 668 for the detailed specification.
```


toninstaller:ubuntu18.04
```
259.0 Add rocksdb
259.0 CMake Error: Could not find cmake module file: CMakeDetermineHOMEPAGE_URLCompiler.cmake
259.0 CMake Error: Error required internal CMake variable not set, cmake may not be built correctly.
259.0 Missing variable is:
259.0 CMAKE_HOMEPAGE_URL_COMPILER_ENV_VAR
259.0 CMake Error: Error required internal CMake variable not set, cmake may not be built correctly.
259.0 Missing variable is:
259.0 CMAKE_HOMEPAGE_URL_COMPILER
259.0 CMake Error: Could not find cmake module file: /usr/bin/ton/CMakeFiles/3.10.2/CMakeHOMEPAGE_URLCompiler.cmake
259.0 CMake Error: Could not find cmake module file: CMakeDeterminehttps://rocksdb.org/Compiler.cmake
259.0 CMake Error: Error required internal CMake variable not set, cmake may not be built correctly.
259.0 Missing variable is:
259.0 CMAKE_https://rocksdb.org/_COMPILER_ENV_VAR
259.0 CMake Error: Error required internal CMake variable not set, cmake may not be built correctly.
259.0 Missing variable is:
259.0 CMAKE_https://rocksdb.org/_COMPILER
259.0 CMake Error: Could not find cmake module file: /usr/bin/ton/CMakeFiles/3.10.2/CMakehttps://rocksdb.org/Compiler.cmake
259.0 -- The ASM compiler identification is Clang
259.0 -- Found assembler: /usr/bin/clang
259.0 CMake Error at third-party/rocksdb/CMakeLists.txt:41 (project):
259.0   No CMAKE_HOMEPAGE_URL_COMPILER could be found.
259.0
259.0   Tell CMake where to find the compiler by setting the CMake cache entry
259.0   CMAKE_HOMEPAGE_URL_COMPILER to the full path to the compiler, or to the
259.0   compiler name if it is in the PATH.
259.0
259.0
259.0 CMake Error: Could not find cmake module file: CMakeHOMEPAGE_URLInformation.cmake
259.0 CMake Error at third-party/rocksdb/CMakeLists.txt:41 (project):
259.0   No CMAKE_https://rocksdb.org/_COMPILER could be found.
259.0
259.0   Tell CMake where to find the compiler by setting the CMake cache entry
259.0   CMAKE_https://rocksdb.org/_COMPILER to the full path to the compiler, or to
259.0   the compiler name if it is in the PATH.
259.0
259.0
259.0 CMake Error: Could not find cmake module file: CMakehttps://rocksdb.org/Information.cmake
259.0 CMake Error: CMAKE_HOMEPAGE_URL_COMPILER not set, after EnableLanguage
259.0 CMake Error: CMAKE_https://rocksdb.org/_COMPILER not set, after EnableLanguage
259.0 -- Configuring incomplete, errors occurred!
259.0 See also "/usr/bin/ton/CMakeFiles/CMakeOutput.log".
259.0 See also "/usr/bin/ton/CMakeFiles/CMakeError.log".
```

toninstaller:ubuntu20.04
```
162.4 CMake Error at /usr/share/cmake-3.16/Modules/FindPackageHandleStandardArgs.cmake:146 (message):
162.4   Could NOT find Secp256k1 (missing: SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
162.4 Call Stack (most recent call first):
162.4   /usr/share/cmake-3.16/Modules/FindPackageHandleStandardArgs.cmake:393 (_FPHSA_FAILURE_MESSAGE)
162.4   CMake/FindSecp256k1.cmake:28 (find_package_handle_standard_args)
162.4   crypto/CMakeLists.txt:322 (find_package)
162.4
162.4
162.4 -- Configuring incomplete, errors occurred!
162.4 See also "/usr/bin/ton/CMakeFiles/CMakeOutput.log".
162.4 See also "/usr/bin/ton/CMakeFiles/CMakeError.log".
```

toninstaller:ubuntu22.04
```
228.6 CMake Error at /usr/share/cmake-3.22/Modules/FindPackageHandleStandardArgs.cmake:230 (message):
228.6   Could NOT find Secp256k1 (missing: SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
228.6 Call Stack (most recent call first):
228.6   /usr/share/cmake-3.22/Modules/FindPackageHandleStandardArgs.cmake:594 (_FPHSA_FAILURE_MESSAGE)
228.6   CMake/FindSecp256k1.cmake:28 (find_package_handle_standard_args)
228.6   crypto/CMakeLists.txt:322 (find_package)
228.6
228.6
228.6 -- Configuring incomplete, errors occurred!
228.6 See also "/usr/bin/ton/CMakeFiles/CMakeOutput.log".
228.6 See also "/usr/bin/ton/CMakeFiles/CMakeError.log".
```