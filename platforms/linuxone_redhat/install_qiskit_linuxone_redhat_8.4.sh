# install_qiskit_linuxone_redhat_8.4.sh
# usage: bash ./install_qiskit_linuxone_redhat_8.4.sh
# This is my recipe for installing Qiskit on a LinuxOne RedHat 8.4 instance
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

# yes | sudo dnf install git
yes | sudo dnf update
yes | sudo dnf install python39 python39-devel python39-pip-wheel python39-setuptools-wheel
yes | sudo dnf install lapack-devel lapack64
yes | sudo dnf install gcc-c++
yes | sudo dnf install python39-cryptography
yes | sudo dnf install cargo
yes | sudo dnf install openblas-devel
yes | sudo dnf install cmake
mkdir Qiskit
cd Qiskit
python3 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
# pip install qiskit[all]
# There are various issues with installing qiskit[all], for instance, qiskit-aer.
# So we're just going to install qiskit-terra and qiskit-ibmq-provider,
# which is enough to run experiments on real QPUs in the cloud.
pip install qiskit-terra
pip install cryptography
pip install qiskit-ibmq-provider
