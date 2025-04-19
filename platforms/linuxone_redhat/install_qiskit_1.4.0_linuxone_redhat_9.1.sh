# install_qiskit_1.4.0_linuxone_redhat_9.1.sh
# usage: bash ./install_qiskit_linuxone_redhat_9.1_qiskit_1.4.0.sh
# This is my recipe for installing Qiskit 1.4.0 on a LinuxOne RedHat 9.1 instance
# as provisioned by the LinuxOne Community Cloud at
# https://linuxone.cloud.marist.edu/#/login
# Thus, it's dependent on the package configuration used by Community Cloud
# to provision new instances.
# No guarantee as to usability. Free software, use at your own risk.
# Installs many packages without asking confirmation.
# Best used on a fresh instance.
# You should have found this file at https://github.com/jwoehr/Quantum-Computing
# File an issue if you have any problems:
# https://github.com/jwoehr/Quantum-Computing/issues
# Jack Woehr jwoehr@softwoehr.com 2022-09-05
# Updated for RHEL 9.1 2023-03-12
# Updated from install_qiskit_linuxone_redhat_9.1.sh for Qiskit 1.4.0 2025-02-25
sudo dnf update -y
sudo dnf install -y python3.11
sudo dnf install -y python3.11-numpy
sudo dnf install -y python3.11-scipy
sudo dnf install -y cmake
sudo dnf install -y gcc.s390x
sudo dnf install -y gcc-c++
export CXX=gcc
sudo dnf install -y gmp
sudo dnf install -y gmp-c++ gmp-devel
sudo dnf install -y wget

mkdir Qiskit
cd Qiskit

python3.11 -m venv qenv --system-site-packages
. qenv/bin/activate
pip install -U pip
pip install wheel
pip install pep517
pip install cython

export INCLUDE_PATH=/usr/local/include:/usr/include
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib

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
