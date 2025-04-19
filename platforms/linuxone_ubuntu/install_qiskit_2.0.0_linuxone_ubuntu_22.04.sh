# install_qiskit_2.0.0_linuxone_ubuntu_22.04.sh
# usage: bash install_qiskit_2.0.0_linuxone_ubuntu_22.04.sh
# This is my recipe for installing Qiskit 2.0.0 on a LinuxOne Ubuntu 22.04 instance
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
# Jack Woehr jwoehr@softwoehr.com 20250-04-19

# Please update Ubuntu and reboot by doing the following before attempting the rest of the recipe:
# sudo apt update
# sudo apt-get -y dist-upgrade
# sudo reboot

cd ~
mkdir Qiskit
cd Qiskit

sudo apt install -y cmake
sudo apt install -y ninja-build
sudo apt install -y libgmp-dev
sudo apt install -y python3.11
sudo apt install -y python3.11-dev
sudo apt install -y python3.11-venv
sudo apt install -y python3-pandas
sudo apt install -y python3-jupyter
sudo apt install -y python3-notebook
sudo apt install -y python3-h5py
sudo apt install -y python3-scipy
sudo apt install -y python3-numpy
sudo apt install -y cargo
sudo apt install -y libblas64-dev
sudo apt install -y libblas-dev
sudo apt install -y libopenblas-dev
sudo apt install -y gfortran
sudo apt install -y python3-sklearn
sudo apt install -y libxml2 
sudo apt install -y libxslt1-dev
sudo apt install -y meson
sudo apt install -y python3-pkgconfig
sudo apt install -y python3-cffi
python3.11 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install -U psutil
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
pip install qiskit-ibm-runtime
pip install qiskit-aer
# End
