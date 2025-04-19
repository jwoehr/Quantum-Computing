# install_qiskit_1.40_linuxone_ubuntu_22.04.sh
# usage: bash ./install_qiskit_1.40_linuxone_ubuntu_22.04.sh
# This is my recipe for installing Qiskit 1.40 on a LinuxOne Ubuntu 22.04 instance
# as provisioned by the LinuxOne Community Cloud at
# https://linuxone.cloud.marist.edu/#/login
# Thus, it's dependent on the package configuration used by Community Cloud
# to provision new instances.
##############################################################################
# No guarantee as to usability. Free software, use at your own risk.
# Installs many packages without asking confirmation.
# Best used on a fresh instance.
# You should have found this file at https://github.com/jwoehr/Quantum-Computing
# File an issue if you have any problems:
# https://github.com/jwoehr/Quantum-Computing/issues
# Jack Woehr jwoehr@softwoehr.com 2023-07-24
cd ~
mkdir Qiskit
cd Qiskit
sudo apt-get update
# We use `yes` to "pre-approve" the changes `apt` wants to make to the system
yes | sudo apt-get dist-upgrade
yes | sudo apt install cmake

# Already installed on LinuxOne Community Cloud Ubuntu 22.04
# yes | sudo apt install python3.10

yes | sudo apt install python3.10-dev
yes | sudo apt install python3.10-venv
yes | sudo apt-get dist-upgrade
yes | sudo apt install python3-pandas
yes | sudo apt install python3-jupyter
yes | sudo apt install python3-notebook
yes | sudo apt install python3-h5py
# yes | sudo apt install cmake
# yes | sudo apt install ninja-build
yes | sudo apt install python3-scipy
yes | sudo apt install python3-numpy
# yes | sudo apt install lapack
# yes | sudo apt install libblas
# yes | sudo apt install liblas
# yes | sudo apt install liblapack
yes | sudo apt install cargo
yes | sudo apt install libblas64-dev
yes | sudo apt install libblas-dev
# yes | sudo apt install libopenblas
yes | sudo apt install libopenblas-dev
yes | sudo apt install gfortran
yes | sudo apt install cython3
yes | sudo apt install python3-sklearn
yes | sudo apt install libxml2 
yes | sudo apt install libxslt1-dev
yes | sudo apt install meson
yes | sudo apt install python3-pkgconfig
yes | sudo apt install python3-cffi
python3.10 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install -U psutil
pip install wheel
pip install pep517

export INCLUDE_PATH=/usr/local/include:/usr/include
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib
yes | sudo apt install -y gmp
yes | sudo apt install -y gmp-c++ gmp-devel

wget https://github.com/symengine/symengine/releases/download/v0.13.0/symengine-0.13.0.tar.gz
tar xf symengine-0.13.0.tar.gz
cd symengine-0.13.0
mkdir build
cd build
cmake ..
make
sudo make install
cd ../..

wget https://github.com/symengine/symengine.py/releases/download/v0.13.0/symengine.py-0.13.0.tar.gz
tar xf symengine.py-0.13.0.tar.gz
cd symengine.py-0.13.0
pip install .
pip install qiskit
pip install qiskit-ibm-runtime
pip install qiskit-aer # supported with special build on s390 Ubuntu
# End
