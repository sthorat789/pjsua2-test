#!/bin/env bash
# install the compiler
sudo apt-get install -y gcc g++ build-essential swig python3-dev default-jdk python3-pip

# compile the pjsip binary
git clone https://github.com/pjsip/pjproject.git
cd pjproject
export CFLAGS="$CFLAGS -fPIC -ggdb"
./configure --enable-shared
make dep && make && sudo make install && sudo ldconfig

# install pjsua2 python3 wrapper
cd pjsip-apps/src/swig/
make && sudo make install


    #70  export CFLAGS="$CFLAGS -fPIC"
    #71  ./configure --enable-shared
    #72  make dep
   #73  make
   #74  make install
   #75  sudo make install
   #76  sudo ldconfig
   #77  echo "/usr/local/lib" | sudo tee /etc/ld.so.conf.d/usr-local-lib.conf
   #78  sudo ldconfig
   #79  sudo ldconfig /usr/local/lib/
   #80  ldconfig -p | grep /usr/local/lib
   #81  cd pjsip-apps/src/swig/python/
   #82  make
   #83  make install
   #84  python3 -c "import pjsua2; print('PJSUA2 version:', pjsua2.Endpoint().libVersion().full)"
