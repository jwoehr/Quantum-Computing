# This is, I believe, my recipe for a LinuxOne Ubuntu instance
# as provisioned by the LinuxOne Community Cloud at
# https://linuxone.cloud.marist.edu/#/login
# There may be errors or omissions, let me know.
# Jack Woehr jwoehr@softwoehr.com 2022-05-19
cd ~
mkdir Qiskit
cd Qiskit
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt install python3-pandas
sudo apt install python3-jupyter
sudo apt install python3-notebook
sudo apt install python3-h5py
sudo apt install python3.8-venv
sudo apt install cmake
sudo apt install ninja-build
sudo apt install python3-scipy
sudo apt install python-numpy
sudo apt install python3.8-dev
sudo apt install lapack
sudo apt install libblas
sudo apt install liblas
sudo apt install liblapack
sudo apt install libblas64-dev
sudo apt install libblas-dev
sudo apt install libopenblas
sudo apt install libopenblas-dev
sudo apt install gfortran
sudo apt install cython3
sudo apt install python3-sklearn
sudo apt install libxml2 
sudo apt install libxslt1-dev
python3 -m venv qrel_venv --system-site-packages
. qrel_venv/bin/activate
pip install -U pip
pip install wheel
pip install pep517
# pip install qiskit[all]
# There are various issues with installing everything, especially qiskit-aer
# but until there is GPU support for Qiskit on LinuxOne it's silly to run the CPU-intensive simulator.
# Also, in some of the most recent (today is 2022-07-21) releases, there are problems building qiskit-terra.
# So we're just going to install qiskit-terra and qiskit-ibmq-provider which is enough to run experiments on real QPUs in the cloude.
pip install qiskit-terra==0.20.2
pip install qiskit-ibmq-provider
# 
