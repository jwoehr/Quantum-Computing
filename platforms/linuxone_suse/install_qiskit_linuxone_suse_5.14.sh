# install_qiskit_linuxone_suse_5.14.sh
# usage: bash install_qiskit_linuxone_suse_5.14.sh
# This is my recipe for installing Qiskit on a LinuxOne SUSE 5.14 instance
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
# Jack Woehr jwoehr@softwoehr.com 2023-09-29
cd ~
mkdir Qiskit
cd Qiskit

# We use `-y` to "pre-approve" the changes `zypper` wants to make to the system
sudo zypper install -y python310
sudo zypper install -y python310-pip

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

sudo zypper install -y python3.10-dev
sudo zypper install -y python3-pandas
sudo zypper install -y jupyter-notebook
sudo zypper install -y python3-h5py

sudo zypper install -y cmake
sudo zypper install -y ninja

sudo zypper install -y python3-scipy
# sudo zypper install -y python3-numpy #installed already

# sudo zypper install -y lapack # installed
# sudo zypper install -y libblas  # installed
# sudo zypper install -y liblas # ?
# sudo zypper install -y liblapack   # installed
sudo zypper install -y cargo
# sudo zypper install -y libblas64-dev # ?
# sudo zypper install -y libblas-dev # ?
# sudo zypper install -y libopenblas-dev # ?
# sudo zypper install -y gfortran # has libgfortran[4,5]
# sudo zypper install -y cython3 # has python3-Cython
# sudo zypper install -y python3-sklearn # python3-sklearn-pandas leads to conflict
# sudo zypper install -y libxml2 # installed
sudo zypper install -y libxslt-devel
sudo zypper install -y meson
sudo zypper install -y python3-pkgconfig
sudo zypper install -y python3-psutil
sudo zypper install -y python3-wheel
sudo zypper install -y python3-pep517
# sudo zypper install -y python3-cffi # installed

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 1
sudo zypper install -y gcc-c++
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-11 1
sudo zypper install -y gcc11-fortran
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-11 1

sudo zypper install -y openblas-common-devel

python3.10 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install qiskit
sudo zypper install -y python3-websockets
sudo zypper install -y libopenssl-devel
pip install qiskit-ibm-provider
pip install qiskit-aer # supported with special build on s390 Ubuntu
# End
