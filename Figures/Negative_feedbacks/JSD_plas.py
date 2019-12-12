"""
Created on Tue 12.December.2019

@author: Kishore

"""
import numpy as np 
# from bmodel.base import Bmodel 
#import matplotlib.pyplot as plt 
import os
#import csv
#from scipy import stats
import networkx as nx
import sys


def pos_feedback(name):
    G = nx.DiGraph()
    if '.topo' in name:
        f = open(str(name),'r')
        content = f.read()
        f.close()
        content = content.split('\n')
        content.remove(content[0])
        content = [content[i].split() for i in range(len(content))]
        cdict = {}
        for i in range(len(content)):
            G.add_edge(content[i][0], content[i][1])
            if content[i][2] == '2':
                cdict[str(content[i][0] + ','+content[i][1])] = -1
            elif content[i][2] == '1': 
                cdict[str(content[i][0] + ','+content[i][1])] = 1
        #print(cdict)
        cycles= list(nx.simple_cycles(G))
        p_fbc = 0
        n_fbc = 0
        #print(name)
        for i in range(len(cycles)):
            prod = 1
            for j in range(len(cycles[i])):
                prod = prod * cdict[cycles[i][j]+','+cycles[i][(j+1)%len(cycles[i])]]
            if prod ==1:
                print(cycles[i])
                p_fbc = p_fbc+1
            else:
            	n_fbc = n_fbc + 1
        #print("")
        return [p_fbc, n_fbc]
    else:
        raise Exception("Input should be a topo file")


topo_file = sys.argv[10]
#print(sys.argv)