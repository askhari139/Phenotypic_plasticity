import os
import glob

txtfiles = []
for file in glob.glob("*.topo"):
    os.system("mpirun -n 3 python3 mpi_RACIPE.py " + file)
    f = file.split(".")[0]
    os.system("mv RACIPE/"+f+"* " + f)