# Quantum Computing

![qiskit-advocate-150x150](https://images.credly.com/size/110x110/images/fb598ca2-1bd2-4674-a49f-3b55445f47f9/IBM_Qiskit_Advocate_-_Advanced_v2.png)

[Qiskit Advocate](https://www.credly.com/badges/27976146-e4a9-47c6-8a2d-f7e932ea3177/public_url)

| ![IBM-champion-2021](https://images.youracclaim.com/size/110x110/images/44a9ba34-ff61-4ccf-9381-e422fdb61f5c/IBM_Champion_2021_-_New_Design_v3.png) | ![IBM-champion-2022](https://images.credly.com/size/110x110/images/d2ecfda3-ebc4-47e0-9a0b-d976e72e7d7c/image.png) | ![IBM-champion-2023](https://images.credly.com/size/110x110/images/708c7a48-7111-4ef3-96a0-1d1bdebb2a3c/image.png)
| ------ | ------ | ----- |
| [IBM Champion 2021](https://www.youracclaim.com/badges/528d23d6-087f-4698-8d17-d59688106ac4/public_url) | [IBM Champion 2022](https://www.credly.com/badges/ec1e324e-48e0-4f02-acf6-e1bd017b02d6/public_url) | [IBM Champion 2023](https://www.credly.com/badges/6316a309-f08b-4e4a-bc41-d4a490b76a19/public_url)

* [QisJob](https://github.com/jwoehr/qisjob)
  * Run OpenQASM2 experiments from command line
  * Other useful features, including
    * List backends
      * properties
      * status
    * Get job list for backend
      * status
      * results
* [NuQASM2](https://github.com/jwoehr/nuqasm2)
  * Experimental regexp-based parser for NuQASM2
* [Quantum Yi Qing](https://github.com/jwoehr/quantum_yiqing)
  * Cast traditional oracle from quantum computer
* [Qiskit Advocate Mentorship Project Fall 2021 OpenQASM 3 Reference Implementation](https://github.com/mentor-fall2021-openqasm)

## Contributions

* [omarcostahamido / qc.VFX](https://github.com/omarcostahamido/qc.VFX)
  * Quantum Blur for the Qiskit Hackathon October 2020

## Platforms

I will post recipes in this repository for installing Qiskit on various platforms as I revisit those platforms.
Currently we have

* s390 (This was blogged as [Using Qiskit on IBM z Systems](https://medium.com/qiskit/using-qiskit-on-ibm-z-systems-398c0c68ffad))
	* a recipe for LinuxOne Ubuntu 20.04 as provisioned by the [Linuxone Community Cloud](https://linuxone.cloud.marist.edu/#/login).
	  * Qiskit Terra and the IBMQ Provider install on Ubuntu, but currently the Provider has some problems running (cffi) ... I'm working working on this ...
	* a recipe for LinuxOne RedHat as provisioned by the [Linuxone Community Cloud](https://linuxone.cloud.marist.edu/#/login)
	  * Trying to keep this up to date ... just updated for RHEL 9.1
	* a dockerfile for a Qiskit container in RHEL8 (contributed, not tested by me)


No guarantees, of course! Such recipes tend to quickly go out of date. [Post an issue](https://github.com/jwoehr/Quantum-Computing/issues) if you find any problems, please!
