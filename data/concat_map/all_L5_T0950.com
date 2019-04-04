# How to visualize these contacts in UCSF Chimera?
# 1. Download and install UCSF Chimera 1.10 or later if you do not have it already.
# 2. Save this file, say, 'all_sr.com'.
# 3. Use 'File->Open' in UCSF Chimera to open 'all_sr.com'.

background solid white;
open http://iris.rnet.missouri.edu/coneva/jobs/2019-01-13-00-56-38/job_id_12/native.pdb;
focus;
rainbow;
labelopt resinfo %(number)s
represent wire;
show;
rlabel;
focus;
distance :167@CB :271@CB
distance :174@CB :264@CB
distance :163@CB :275@CB
distance :177@CB :261@CB
distance :170@CB :268@CB
distance :130@CB :309@CB
distance :163@CB :274@CB
distance :160@CB :278@CB
distance :166@CB :271@CB
distance :171@CB :268@CB
distance :126@CB :313@CB
distance :130@CB :310@CB
distance :167@CB :272@CB
distance :181@CB :257@CB
distance :133@CB :306@CB
distance :170@CB :267@CB
distance :173@CB :264@CB
distance :174@CB :265@CB
distance :156@CB :282@CB
distance :164@CB :275@CB
distance :156@CB :281@CB
distance :123@CB :316@CB
distance :137@CB :302@CB
distance :177@CB :260@CB
distance :127@CB :313@CB
distance :163@CB :271@CB
distance :170@CB :271@CB
distance :64@CB :129@CB
distance :180@CB :257@CB
distance :167@CB :268@CB
distance :159@CB :278@CB
distance :177@CB :264@CB
distance :134@CB :306@CB
distance :184@CB :254@CB
distance :174@CB :261@CB
distance :163@CB :278@CB
distance :153@CB :285@CB
distance :174@CB :268@CB
distance :33@CB :51@CB
distance :308@CB :336@CB
distance :160@CB :279@CB
distance :170@CB :264@CB
distance :177@CB :257@CB
distance :37@CB :47@CB
distance :167@CB :275@CB
distance :156@CB :278@CB
distance :123@CB :313@CB
distance :156@CB :285@CB
distance :130@CB :306@CB
distance :160@CB :275@CB
distance :130@CB :313@CB
distance :69@CB :340@CB
distance :312@CB :332@CB
distance :25@CB :298@CB
distance :184@CB :257@CB
distance :126@CB :309@CB
distance :137@CB :306@CB
distance :30@CB :54@CB
distance :315@CB :332@CB
distance :133@CB :309@CB
distance :181@CB :258@CB
distance :29@CB :54@CB
distance :178@CB :261@CB
distance :25@CB :294@CB
distance :65@CB :344@CB
distance :129@CB :309@CB
distance :181@CB :261@CB
distance :319@CB :325@CB
setattr g lineWidth 2;
setattr g color black;
turn z 2 360 precess 20;
