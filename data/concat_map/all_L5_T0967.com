# How to visualize these contacts in UCSF Chimera?
# 1. Download and install UCSF Chimera 1.10 or later if you do not have it already.
# 2. Save this file, say, 'all_sr.com'.
# 3. Use 'File->Open' in UCSF Chimera to open 'all_sr.com'.

background solid white;
open http://iris.rnet.missouri.edu/coneva/jobs/2019-01-13-00-56-38/job_id_20/native.pdb;
focus;
rainbow;
labelopt resinfo %(number)s
represent wire;
show;
rlabel;
focus;
distance :18@CB :40@CB
distance :19@CB :39@CB
distance :21@CB :37@CB
distance :37@CB :73@CB
distance :38@CB :74@CB
distance :38@CB :75@CB
distance :39@CB :75@CB
distance :40@CB :76@CB
distance :53@CB :72@CB
distance :11@CB :17@CB
distance :17@CB :40@CB
distance :18@CB :39@CB
distance :24@CB :34@CB
distance :26@CB :33@CB
distance :33@CB :69@CB
distance :34@CB :70@CB
setattr g lineWidth 2;
setattr g color black;
turn z 2 360 precess 20;
