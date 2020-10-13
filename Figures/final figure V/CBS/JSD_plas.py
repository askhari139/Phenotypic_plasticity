"""
Created on Tue 25 JUN 18:12:35 2019

@author: burhan

"""
import numpy as np 
from bmodel.base import Bmodel 
import matplotlib.pyplot as plt 
import os
import csv
from scipy import stats
import networkx as nx

def binarize(state, core_nodes):
    string = bin(state)[2:]
    while(len(string)!=len(core_nodes)):
        string = '0'+string
    return string[::-1]


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
        #print(name)
        for i in range(len(cycles)):
            prod = 1
            for j in range(len(cycles[i])):
                prod = prod * cdict[cycles[i][j]+','+cycles[i][(j+1)%len(cycles[i])]]
            if prod ==1:
                print(cycles[i])
                p_fbc = p_fbc+1
        #print("")
        return p_fbc
    else:
        raise Exception("Input should be a topo file")


def ss_bin_b(name_of_topo,bmodel,runs, core_nodes):
    #print(name_of_topo)
    
    bmodel.runs(n_runs = runs, fast =True)
   
    freq= {}

    for i in range(len(bmodel.steady_states)):
        idi = 0
        for j in range(len(name_nodes)): 
            if bmodel.steady_states[name_nodes[j]][i]==1.0 and name_nodes[j] in core_nodes:
            	for t in range(len(core_nodes)):
            		if core_nodes[t] == name_nodes[j]:
                		idi = idi + 2**t
        if idi in freq:
        	freq[idi] = freq[idi] + 1
        else:
        	freq[idi] = 1
    
    freq = {binarize(i,core_nodes):freq[i]/(len(bmodel.steady_states)) for i in freq}
   
    if len(bmodel.steady_states)==0:
    	return "Error"
    #matrix = [[bmodel.steady_states[name][i] for i in range(len(bmodel.steady_states))] for name in name_nodes]
    return freq


def ss_bin_r(name_of_topo,core_nodes):
	print(name_of_topo)
	
	params = np.loadtxt(str(name_of_topo)+"_parameters.dat")
	ss_v = [params[i][1] for i in range(len(params))]
	ss_v = list(set(ss_v))
	ss = [np.loadtxt(str(name_of_topo)+"_solution_"+str(int(ssv))+".dat") for ssv in ss_v]
	nor =[[1 for i in range(len(params))]for i in range(nodes)]
	f = open(str(name_of_topo) + '.prs', 'r')
	prs = f.read()
	prs = prs.split('\n')
	prs.remove(prs[0])
	prs = [prs[i].split('\t') for i in range(len(prs))]
	prs = [prs[i][0] for i in range(len(prs))]
	prs = [prs[i].split('To') for i in range(len(prs))]
	
	"""Creating Normalization Matrix"""
	
	for i in range(len(params)):
		j=2
		while(j<len(params[i])):
			if j<(nodes+2):
				if 'Prod' in prs[j-2][0]:
					nor[j-2][i] = nor[j-2][i]*params[i][j]
				#print(j, prs[j-2])
				j=j+1
				
			elif j<(2*nodes+2):
				ni = j-nodes-2
				if 'Deg' in prs[j-2][0]:
					nor[ni][i] = nor[ni][i]/params[i][j]
				#print(j, prs[j-2])
				j=j+1
				
			else:
				if 'Inh' in prs[j-2][0] or 'Act' in prs[j-2][0]:
					nor[index_nodes[prs[j-2][1]]][i] = nor[index_nodes[prs[j-2][1]]][i]*params[i][j]
				j=j+1

	ctr = 0
	ss_val = [[] for i in range(nodes)]   
	
	"""Normalization with g,I1,I2,..K"""
	for i in range(len(ss)):
		if type(ss[i][0])==list or type(ss[i][0])==np.ndarray:
			for j in range(len(ss[i])):
				for k in range(int(ss[i][j][1])):
					for m in range(nodes):
						#print("l:" +str(nor[m][0]))#int(ss[i][j][0]-1)])
						ss[i][j][nodes*k + m+2] = np.log2(((2**ss[i][j][nodes*k + m+2])/nor[m][int(ss[i][j][0]-1)]))
						ss_val[m].append(ss[i][j][nodes*k + m +2])
					ctr = ctr + 1
			
		else:
			for k in range(int(ss[i][1])):
				for m in range(nodes):
					ss[i][nodes*k + m+2] = np.log2(((2**ss[i][nodes*k + m+2])/nor[m][int(ss[i][0]-1)]))
					ss_val[m].append(ss[i][nodes*k + m +2])
				ctr = ctr + 1
			
				#print(n1[int(ss[i][j][0]-1)])

	for i in range(nodes):
		ss_val[i] = np.array(ss_val[i])
	avg = [ss_val[i].mean() for i in range(nodes)]
	std = [ss_val[i].std() for i in range(nodes)]
	
	"""Calculating z-score and binary frequencies"""
	freq= {} #000,001,010,011,100,101,110,111,-->ZEB, miRNA 200, GRHL2
	pls1 = 0
	zs = [[] for i in range(nodes)]
	for i in range(len(ss)):
		for j in range(len(ss[i])):
			flag = 0
			if type(ss[i][0])==list or type(ss[i][0])==np.ndarray:
				for k in range(int(ss[i][j][1])):
					idi = 0; 
					for m in range(nodes):
						ss[i][j][nodes*k+ m+2] = (ss[i][j][nodes*k+ m+2] - avg[m])/std[m]
						zs[m].append(ss[i][j][nodes*k+ m+2])
						if ss[i][j][nodes*k + m+2] >0 and name_nodes[m] in core_nodes:
							for t in range(len(core_nodes)):
								if core_nodes[t] == name_nodes[m]:
									idi = idi + 2**t
					if idi in freq:
						freq[idi] = freq[idi] + 1/(ss[i][j][1])
					else:
						freq[idi] = 1/(ss[i][j][1])
					if k==0:
						flag_idi = idi
					if flag_idi!=idi and flag==0:
						#print(i,j,k)
						pls1= pls1+1
						flag = 1

			
			else:
				for k in range(int(ss[i][1])):
					idi = 0
					for m in range(nodes):
						ss[i][nodes*k+ m+2] = (ss[i][nodes*k+ m+2] - avg[m])/std[m]
						zs[m].append(ss[i][nodes*k+ m+2])
						if ss[i][nodes*k + m+2] >0 and name_nodes[m] in core_nodes:
							for t in range(len(core_nodes)):
								if core_nodes[t] == name_nodes[m]:
									idi = idi + 2**t
					if idi in freq:
						freq[idi] = freq[idi] + 1/(ss[i][1])
					else:
						freq[idi] = 1/(ss[i][1])
					if k==0:
						flag_idi = idi
					if flag_idi!=idi and flag==0:
						print(i,j,k)
						pls1=pls1+1
						flag = 1;

	pls1 = pls1/len(params)
	pls2 = 1- len(ss[0])/len(params)
	freq = {binarize(t,core_nodes): freq[t]/len(params) for t in freq}   
	#print(f"{p1_ZEB} {p2_ZEB} {p3_ZEB} {p4_ZEB}")
	
	return freq, [pls1, pls2]

def p_dist_e(p,q):
    state_list =[]
    for i in p:
        state_list.append(i)
    for i in q:
        if i not in state_list:
            state_list.append(i)
    KLp = 0; KLq = 0;
    for i in range(len(state_list)):
        if state_list[i] in p and state_list[i] in q:
            KLp = KLp + p[state_list[i]]*np.log2(2*p[state_list[i]]/(p[state_list[i]]+q[state_list[i]]))
            KLq = KLq + q[state_list[i]]*np.log2(2*q[state_list[i]]/(p[state_list[i]]+q[state_list[i]]))
        elif state_list[i] in p and state_list[i] not in q:
        	print(state_list)
        	KLp = KLp + p[state_list[i]]*np.log2(2)
        	KLq = KLq + 0
        elif state_list[i] in q and state_list[i] not in p:
            KLq = KLq + q[state_list[i]]*np.log2(2)
            KLp = KLp + 0
    return (KLp+KLq)/2

L = []
path = str(input('Enter the topo folder path: '))
id_name = str(input('Enter id name: '))
files = os.listdir(path)

for fl in files:
    if '.topo' in fl:
        L.append(fl[:-5])

""" Identifying Core Nodes"""
name_of_topo = path+'/' +str(L[0])+ '.topo'
f = open(str(name_of_topo),'r')
content = f.read()
f.close()
content = content.split('\n')
content.remove(content[0])
content = [content[i].split() for i in range(len(content))]
name_nodes = []
index_nodes = {}
ind = 0 
    
for i in range(len(content)):
    if content[i][0] not in name_nodes:
        name_nodes.append(content[i][0])
        index_nodes[content[i][0]] = ind
        ind=ind + 1 
        
    if content[i][1] not in name_nodes:
        name_nodes.append(content[i][1])
        index_nodes[content[i][1]] = ind
        ind = ind + 1
nodes = len(name_nodes)
sig_nodes = [i for i in name_nodes]
out_nodes = [i for i in name_nodes]

""" Identifying Output and signalling nodes"""
   
for i in range(len(content)):
    if content[i][0] in out_nodes:
        out_nodes.remove(content[i][0])
    if content[i][1] in sig_nodes:
        sig_nodes.remove(content[i][1])
core_nodes = []
for i in range(len(name_nodes)):
    if name_nodes[i] not in out_nodes and name_nodes[i] not in sig_nodes:
        core_nodes.append(name_nodes[i])
core_nodes = core_nodes + out_nodes
name_nodes = core_nodes + sig_nodes


"""  Actual core"""

WT_rfreq,WT_plas = ss_bin_r(path + '/'+'WT', core_nodes)
WT_bfreq = ss_bin_b(path + '/'+'WT',Bmodel.from_topo(path+'/'+ 'WT'+ '.topo'),10000, core_nodes)
cL = []
bad_topo = []
WT_rdist = []
WT_bdist = []
plas1 = []
plas2 = []
pos_fb = []
freq_mapr = []
freq_mapb = []
for i in range(len(L)):
	rfreq, plasticity = ss_bin_r(path + '/'+L[i], core_nodes)
	#print(rfreq, plasticity)
	bfreq = ss_bin_b(path + '/'+L[i],Bmodel.from_topo(path+'/'+L[i]+'.topo'), 10000, core_nodes)
	if bfreq=='Error':
		bad_topo.append(bad_topo)
		print("Error "+str(L[i]) )
		continue
	cL.append(L[i])
	WT_rdist.append(p_dist_e(WT_rfreq,rfreq)), WT_bdist.append(p_dist_e(WT_bfreq,bfreq))
	freq_mapr.append(rfreq), freq_mapb.append(bfreq)
	plas1.append(plasticity[0]); plas2.append(plasticity[1]);
	pos_fb.append(pos_feedback(path+'/'+L[i]+'.topo'))
	states = []
	for j in rfreq:
		if j not in states:
			states.append(j)
	for j in bfreq:
		if j not in states:
			states.append(j)
	
	rvalues = []; bvalues = []
	for j in range(len(states)):
		key = states[j]
		if key in rfreq:
			rvalues.append(rfreq[key])
		else:
			rvalues.append(0)
		if key in bfreq:
			bvalues.append(bfreq[key])
		else:
			bvalues.append(0)
	
	with open(L[i]+' b_r.csv','w+') as csvwriter:
		writer = csv.writer(csvwriter, delimiter = ',')
		writer.writerow(['States','RACIPE frequency', 'Boolean frequency'])
		for j in range(len(states)):
			Line = []
			Line.append('"'+str(states[j])+'"')
			Line.append(rvalues[j])
			Line.append(bvalues[j])
			writer.writerow(Line)
			#print(Line)

plt.figure(figsize = (4,3))
plt.plot(WT_bdist,WT_rdist,'o')
plt.xlabel("Boolean JSD from WT",fontsize='large')
plt.ylabel("RACIPE JSD from WT",fontsize='large')
plt.tight_layout()
plt.savefig(id_name + '_scatter_plots.svg', format = "svg")
plt.tight_layout()
plt.savefig(id_name + '_scatter_plots.pgf', format= "pgf")
plt.close()

dist_mapr = [[p_dist_e(freq_mapr[i],freq_mapr[j]) for j in range(len(cL))] for i in range(len(cL))]
dist_mapb = [[p_dist_e(freq_mapb[i],freq_mapb[j]) for j in range(len(cL))] for i in range(len(cL))]

with open(id_name+'_table_JSD.csv','w+') as csvwriter:
	writer = csv.writer(csvwriter,delimiter = ',')
	writer.writerow(['Boolean','JSD','heatmap','data'])
	Line = [' ']
	for name in cL:
		Line.append(name)
	writer.writerow(Line)
	for i in range(len(cL)):
		Line = [cL[i]]
		for j in range(len(cL)):
			Line.append(dist_mapb[i][j])
		writer.writerow(Line)
	writer.writerow([])
	writer.writerow(['RACIPE','JSD','heatmap','data'])
	Line = [' ']
	for name in cL:
		Line.append(name)
	writer.writerow(Line)
	for i in range(len(cL)):
		Line = [cL[i]]
		for j in range(len(cL)):
			Line.append(dist_mapr[i][j])
		writer.writerow(Line)


names = [cL[i]+" (" +str(i)+ ") " for i in range(len(cL))]
namex = [str(i)  for i in range(len(cL))]


fig = plt.figure(figsize = (10,6))
ax = fig.add_subplot(111)
cax = ax.matshow(dist_mapb,cmap = 'Blues')#, vmin=-1, vmax=1)
fig.colorbar(cax)
ticks = np.arange(0,len(cL),1)
ax.set_xticks(ticks)
ax.set_yticks(ticks)
ax.set_xticklabels(namex)
ax.set_yticklabels(names)
plt.tight_layout()
plt.savefig(id_name + '_bool_heatmap.svg', format = "svg")
plt.tight_layout()
plt.savefig(id_name + '_bool_heatmap.pgf', format= "pgf")
plt.close()

fig = plt.figure(figsize = (10,7))

ax = fig.add_subplot(111)
cax = ax.matshow(dist_mapr,cmap = 'Blues')#, vmin=-1, vmax=1)
fig.colorbar(cax)
ticks = np.arange(0,len(cL),1)
ax.set_xticks(ticks)
ax.set_yticks(ticks)
ax.set_xticklabels(namex)
ax.set_yticklabels(names)
plt.tight_layout()
plt.savefig(id_name + '_RACIPE_heatmap.svg', format = "svg")
plt.tight_layout()
plt.savefig(id_name + '_RACIPE_heatmap.pgf', format= "pgf")
plt.close()

x = WT_bdist
x = np.array(x)
res = stats.cumfreq(x, numbins=500)
x = res.lowerlimit + np.linspace(0, res.binsize*res.cumcount.size, res.cumcount.size)
fi = plt.figure(figsize = (4,3))
fig = fi.add_subplot(1,1,1)
y = []
for ctr in range(len(res.cumcount)):
   	y.append(res.cumcount[ctr]/len(cL))
fig.bar(x, y, width=res.binsize)
#fig.set_title('Cumulative histogram')
#fig.xlabel('Correlation Coeff. ' +str(name_nodes[i])+ ' vs. ' + str(name_nodes[j]) )
fig.set_xlim([-0.05, x.max()])
fig.set_ylabel('Boolean JSD from WT\n'+'Cumulative Frequency',fontsize = 'large')
#fig.axvline(WT_zs[i][j], color = 'black')
#fig.set_title()
plt.tight_layout()
plt.savefig(id_name + '_bool_cum-freq.svg', format = "svg")
plt.tight_layout()
plt.savefig(id_name + '_bool_cum-freq.pgf', format= "pgf")
plt.close()

x = WT_rdist
x = np.array(x)
#plt.ylabel('frequency')
res = stats.cumfreq(x, numbins=500)
x = res.lowerlimit + np.linspace(0, res.binsize*res.cumcount.size, res.cumcount.size)
fi = plt.figure(figsize=(4,3))
fig = fi.add_subplot(1,1,1)
y = []
for ctr in range(len(res.cumcount)):
   	y.append(res.cumcount[ctr]/len(cL))
fig.bar(x, y, width=res.binsize)
fig.set_xlim([-0.05,x.max()])
fig.set_ylabel('RACIPE JSD from WT\n' + 'Cumulative Frequency',fontsize = 'large')
#fig.axvline(WT_zs[i][j], color = 'black')
#fig.set_xlabel('Correlation ' + str(name_nodes[i]) + " & " + str(name_nodes[j])+ ' Cumulative Frequency histogram')
plt.tight_layout()
plt.savefig(id_name + '_RACIPE_cum-freq.svg', format = "svg")
plt.tight_layout()
plt.savefig(id_name + '_RACIPE_cum-freq.pgf', format= "pgf")
plt.close()

"""
uni_pfb = max(pos_fb) - min(pos_fb)+1
WT_rd = [[] for i in range(uni_pfb)]; plas1_rd = [[] for i in range(uni_pfb)]
for j in range(len(WT_rdist)):
	p = pos_fb[j] - min(pos_fb)
	WT_rd[p].append(WT_rdist[j]); plas1_rd[p].append(plas1[j])

fig,axs = plt.subplots(nrows = uni_pfb,ncols = 1,sharex = True)
for i in range(uni_pfb):
	ax=axs[i]
	ax.scatter(WT_rd[i],plas1_rd[i])
	ax.set_title(str(i+min(pos_fb)) + " = Positive feedback loops")
"""


plt.figure(figsize = (4,3))
plt.scatter(WT_rdist,pos_fb,c= plas1)
plt.xlabel('JSD from WT',fontsize = 'large')
plt.ylabel('Positive feedbacks',fontsize = 'large')
plt.colorbar()
plt.tight_layout()
plt.savefig(id_name+" JSD_plas_fb.svg",format='svg')
plt.tight_layout()
plt.savefig(id_name+ "JSD_plas_fb.pgf", format = 'pgf')
plt.close()
