# install_qiskit_2.1.0_linuxone_ubuntu_22.04.sh
# usage: bash ./install_qiskit_2.1.0_linuxone_ubuntu_22.04.sh
# This is my recipe for installing Qiskit 2.1.0 on a LinuxOne Ubuntu 22.04 instance
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
# Jack Woehr jwoehr@softwoehr.com 2025-06-08
cd ~
mkdir Qiskit
cd Qiskit
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt -y install python3-scipy
sudo apt -y install python3-numpy
sudo apt -y install python3.10-venv
pip install -U pip
pip install qiskit
pip install qiskit-ibm-runtime
# pip install qiskit-aer # having difficulty building this on s390 Ubuntu
# End
