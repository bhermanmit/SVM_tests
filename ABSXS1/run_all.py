#!/usr/bin/env python

import sys
import subprocess
import os

# create lists
enr = [1.6,2.4,2.4,3.1,3.1,3.1,3.1]
bps = [0.0,12.0,16.0,0.0,16.0,20.0]

# create the directories and copy base files into them
for i in range(6):
  subprocess.call(['rm','-f','-r','rho_type'+str(i+1)])
  subprocess.call(['mkdir','rho_type'+str(i+1)])
  subprocess.call(['cp','data.xml','rho_type'+str(i+1)+'/.'])
  subprocess.call(['cp','settings.xml','rho_type'+str(i+1)+'/.'])
  os.chdir('rho_type'+str(i+1))
  subprocess.call(['../../../SVM/src/utils/generate_densities.py','1000','0.66','0.74',str(enr[i]),str(bps[i]),'data.xml'])
  subprocess.call(['../../../SVM/src/svm'])
  os.chdir('..')
