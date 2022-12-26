# install_qiskit_linuxone_redhat_8.6.sh
# usage: bash ./install_qiskit_linuxone_redhat_8.6.sh
# This is my recipe for installing Qiskit on a LinuxOne RedHat 8.6 instance
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
# Updated for RHEL 8.7 2022-12-26

yes | sudo dnf update
# You probably already installed git to pull this script down to your RHEL instance.
yes | sudo dnf install git
yes | sudo dnf install python39 python39-devel python39-pip-wheel python39-setuptools-wheel python39-scipy
yes | sudo dnf install lapack-devel lapack64
yes | sudo dnf install gcc-c++
yes | sudo dnf install python39-cryptography
# Let's prepare to install matplotlib which is used by [QisJob](https://github.com/jwoehr/qisjob)
# Not necessary for Qiskit itself but we want this stuff in the system site packages already
# when we create our virtual environment.
yes | sudo dnf install python3-pillow-devel
yes | sudo dnf install freetype-devel
yes | sudo dnf install make
sudo alternatives --set python3 /usr/bin/python3.9
mkdir Qiskit
cd Qiskit
python3 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install wheel
pip install cryptography
# The current issues with installing qiskit[all] include the SciPy 1.9.3 requirement.
# pip install qiskit[all] # Can't do this yet.
pip install qiskit # installs qiskit-terra, qiskit-ibmq-provider, qiskit-aer
pip install matplotlib
# here's a couple of my projects you might want.
# git clone https://github.com/jwoehr/quantum_yiqing # use from the cloned dir
# git clone https://github.com/jwoehr/qisjob # cd to qisjob and make to install
