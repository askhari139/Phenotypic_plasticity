from mpi4py import MPI
import time
import os
import sys

topo_file = sys.argv[1]
folder = topo_file.split(".")[0]
os.system("mkdir " + folder)
os.system("cp " + topo_file + " RACIPE")
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
os.chdir("RACIPE")
new_file = folder + "_" + str(rank) + ".topo"
new_folder = folder + "_" + str(rank)
os.system("mkdir " + new_folder)
os.system("cp " + topo_file + " " + new_file)
os.system("./RACIPE " + new_file + " -num_paras 10000 -num_ode 100 > " + new_folder + ".txt")
os.system("cp " + new_folder + "* " + new_folder)
print('My rank is ',rank, 'printed at ', (time.time()))

