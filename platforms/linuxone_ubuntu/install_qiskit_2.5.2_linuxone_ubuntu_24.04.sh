# install_qiskit_2.5.2_linuxone_ubuntu_24.04.sh
# usage: bash install_qiskit_2.5.2_linuxone_ubuntu_24.04.sh
# This is my recipe for installing Qiskit 2.5.2 on a LinuxOne Ubuntu 24.04 instance
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
# Jack Woehr jwoehr@softwoehr.com 2026-08-23


# Ubuntu packages
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt install -y libpython3-dev
sudo apt install -y python3-scipy
sudo apt install -y python3-numpy
sudo apt install -y python3.12-venv
sudo apt install -y gfortran
sudo apt install -y libopenblas-dev
sudo apt install -y libopenblas64-dev
sudo apt install -y cmake

# Python virtual envirnoment and packages
mkdir Qiskit
cd Qiskit
python3 -m venv .venv --system-site-packages
source .venv/bin/activate
pip install -U pip

# Install Qiskit
pip install qiskit-ibm-runtime
# pip install qiskit # qiskit-ibm-runtime installs qiskit
# pip install qiskit-aer # having difficulty building this on s390 Ubuntu
# End
