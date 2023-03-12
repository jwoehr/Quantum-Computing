# install_qiskit_linuxone_redhat_9.1.sh
# usage: bash ./install_qiskit_linuxone_redhat_9.1.sh
# This is my recipe for installing Qiskit on a LinuxOne RedHat 9.1 instance
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

yes | sudo dnf update
yes | sudo dnf install git
yes | sudo dnf install python3-devel python3-pip-wheel python3-setuptools-wheel python3-scipy
yes | sudo dnf install lapack-devel lapack64_
yes | sudo dnf install gcc-c++
yes | sudo dnf install python3-cryptography
mkdir Qiskit
cd Qiskit
python -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install wheel
pip install cryptography
pip install qiskit # installs qiskit-terra, qiskit-ibmq-provider, qiskit-aer
# here's a couple of my projects you might want.
# git clone https://github.com/jwoehr/quantum_yiqing # use from the cloned dir
# git clone https://github.com/jwoehr/qisjob # cd to qisjob and make to install
