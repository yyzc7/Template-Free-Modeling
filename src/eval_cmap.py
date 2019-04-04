# -*- coding: utf-8 -*-
"""
Created on Wed Feb 13 12:23:17 2019

@author: Tianqi
"""
import sys
import subprocess
import os,glob,re

from math import sqrt

import numpy as np

if len(sys.argv) != 4:
    print('####please input the right parameters####')
    print('[1]cmap_dir,[2]rr_dir,[3]list_choose("casp13" or "dncon2")\n')
    sys.exit(1)
# Locations of .cmap
cmap_dir = sys.argv[1]
rr_dir = sys.argv[2]
list_choose = sys.argv[3]
# ################## Download and prepare the dataset ##################

def cmap2rr(cmap_dir,rr_dir):
     for filename in glob.glob(cmap_dir+'/*.txt'):
         id = os.path.basename(filename)
         id = re.sub('\.txt$', '', id)
         f = open(rr_dir+"/"+id+".raw",'w')
         cmap = np.loadtxt(filename,dtype='float32')
         L = cmap.shape[0]
         for i in range(0,L):
             for j in range(i+1,L):
                 f.write(str(i+1)+" "+str(j+1)+" 0 8 "+str(cmap[i][j])+"\n")
         f.close()
         os.system('egrep -v \"^>\" /mnt/data/zhiye/Python/Mollecular_Modeling/TemplateFreeModel/data/fasta/'+id+'.fasta'+'  > '+id+'.rr')
         os.system('cat '+id+'.raw >> '+id+'.rr')
         os.system('rm -f '+id+'.raw')

# ############################## Main program ################################

def main():
    print("It may take 1 or 2 minutes.....")
    if not os.path.exists(rr_dir):
        os.makedirs(rr_dir)
    os.chdir(rr_dir)
    cmap2rr(cmap_dir,rr_dir)

if __name__=="__main__":
    main()
