# install_qiskit_2.5.2_linuxone_redhat_9.6.sh
# usage: bash ./install_qiskit_2.5.2_linuxone_redhat_9.6.sh
# This is my recipe for installing Qiskit 2.5.2 on a LinuxOne RedHat 9.6 instance
# as provisioned by the LinuxOne Community Cloud at
# https://linuxone.cloud.marist.edu/#/login
# Thus, it's dependent on the package configuration used by Community Cloud
# to provision new instances.
###########################################################################
# No guarantee as to usability. Free software, use at your own risk.
# Installs many packages without asking confirmation.
# Best used on a fresh instance.
# You should have found this file at https://github.com/jwoehr/Quantum-Computing
# File an issue if you have any problems:
# https://github.com/jwoehr/Quantum-Computing/issues
# Jack Woehr jwoehr@softwoehr.com 2026-08-23

# RHEL packages
sudo dnf -y update
sudo dnf -y install python-3.12 python3.12-devel \
    python3.12-pip python3.12-pip-wheel python3.12-setuptools-wheel \
    python3.12-scipy python3.12-cryptography
sudo dnf -y install lapack-devel lapack64_
sudo dnf -y install gcc-c++ gcc-fortran
sudo dnf -y install openblas-devel
sudo dnf -y install python3.12-numpy python3.12-scipy
sudo dnf -y install cmake

# Python virtual envirnoment and packages
mkdir Qiskit
cd Qiskit
python3.12 -m venv .venv --system-site-packages
source .venv/bin/activate
pip install -U pip

# Install Qiskit
pip install qiskit-ibm-runtime
# pip install qiskit # qiskit-ibm-runtime installs qiskit
