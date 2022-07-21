# install_qiskit_linuxone_ubuntu_20.04.sh
# usage: bash ./install_qiskit_linuxone_ubuntu_20.04.sh
# This is my recipe for installing Qiskit on a LinuxOne Ubuntu 20.04 instance
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
# Jack Woehr jwoehr@softwoehr.com 2022-07-21
cd ~
mkdir Qiskit
cd Qiskit
sudo apt-get update
# We will "pre-approve" the changes `apt` asks if it can make to the system
yes | sudo apt-get dist-upgrade
yes | sudo apt install python3-pandas
yes | sudo apt install python3-jupyter
yes | sudo apt install python3-notebook
yes | sudo apt install python3-h5py
yes | sudo apt install python3.8-venv
yes | sudo apt install cmake
yes | sudo apt install ninja-build
yes | sudo apt install python3-scipy
yes | sudo apt install python-numpy
yes | sudo apt install python3.8-dev
yes | sudo apt install lapack
yes | sudo apt install libblas
yes | sudo apt install liblas
yes | sudo apt install liblapack
yes | sudo apt install libblas64-dev
yes | sudo apt install libblas-dev
yes | sudo apt install libopenblas
yes | sudo apt install libopenblas-dev
yes | sudo apt install gfortran
yes | sudo apt install cython3
yes | sudo apt install python3-sklearn
yes | sudo apt install libxml2 
yes | sudo apt install libxslt1-dev
python3 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install wheel
pip install pep517
# pip install qiskit[all]
# There are various issues with installing qiskit[all], for instance, qiskit-aer.
# So we're just going to install qiskit-terra and qiskit-ibmq-provider,
# which is enough to run experiments on real QPUs in the cloud.
pip install qiskit-terra
pip install qiskit-ibmq-provider
# End
