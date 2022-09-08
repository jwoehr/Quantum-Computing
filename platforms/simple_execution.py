# A simple script that sends a quick program to the IBM Q cloud simulator
# An easy test after installing qiskit-terra and qiskit-ibmq-provider
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister, IBMQ, execute

qr = QuantumRegister(2, "userqr")
cr = ClassicalRegister(2, "c0")
qc = QuantumCircuit(qr, cr)
qc.h(qr[0])
qc.cx(qr[0], qr[1])
qc.y(qr[0])
qc.x(qr[1])
qc.measure(qr, cr)
provider = IBMQ.load_account()
backend = provider.get_backend("ibmq_qasm_simulator")
job = execute(qc, backend)
result = job.result()
print(result.data())
