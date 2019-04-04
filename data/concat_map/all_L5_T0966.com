# How to visualize these contacts in UCSF Chimera?
# 1. Download and install UCSF Chimera 1.10 or later if you do not have it already.
# 2. Save this file, say, 'all_sr.com'.
# 3. Use 'File->Open' in UCSF Chimera to open 'all_sr.com'.

background solid white;
open http://iris.rnet.missouri.edu/coneva/jobs/2019-01-13-00-56-38/job_id_19/native.pdb;
focus;
rainbow;
labelopt resinfo %(number)s
represent wire;
show;
rlabel;
focus;
distance :24@CB :43@CB
distance :21@CB :46@CB
distance :24@CB :42@CB
distance :20@CA :46@CB
distance :27@CB :39@CB
distance :28@CB :39@CB
distance :24@CB :46@CB
distance :21@CB :43@CB
distance :24@CB :39@CB
distance :51@CB :63@CB
distance :25@CB :43@CB
distance :21@CB :47@CB
distance :28@CB :40@CB
distance :17@CB :50@CB
distance :47@CB :67@CB
distance :51@CB :60@CB
distance :51@CB :64@CB
distance :376@CB :383@CB
distance :47@CB :66@CB
distance :17@CB :49@CB
distance :44@CB :71@CB
distance :17@CB :46@CB
distance :47@CB :63@CB
distance :28@CB :36@CB
distance :44@CB :67@CB
distance :349@CB :355@CB
distance :54@CB :60@CB
distance :44@CB :70@CB
distance :28@CB :43@CB
distance :50@CB :63@CB
distance :90@CB :97@CB
distance :363@CB :369@CB
distance :48@CB :67@CB
distance :167@CB :173@CB
distance :43@CB :70@CB
distance :21@CB :50@CB
distance :51@CB :67@CB
distance :332@CB :383@CB
distance :450@CB :457@CB
distance :31@CB :39@CB
distance :47@CB :70@CB
distance :376@CB :382@CB
distance :450@CB :456@CB
distance :18@CB :50@CB
distance :178@CB :185@CB
distance :179@CB :185@CB
distance :330@CB :383@CB
distance :89@CB :97@CB
distance :281@CB :290@CB
distance :332@CB :384@CB
distance :176@CB :185@CB
distance :461@CB :467@CB
distance :177@CB :185@CB
distance :43@CB :97@CB
distance :330@CB :382@CB
distance :178@CB :184@CB
distance :40@CB :74@CB
distance :384@CB :429@CB
distance :460@CB :466@CB
distance :349@CB :359@CB
distance :176@CB :187@CB
distance :86@CB :97@CB
distance :346@CB :359@CB
distance :24@CB :280@CB
distance :349@CB :356@CB
distance :294@CB :301@CB
distance :384@CB :428@CB
distance :363@CB :373@CB
distance :301@CB :428@CB
distance :329@CB :382@CB
distance :177@CB :186@CB
distance :295@CB :301@CB
distance :421@CB :427@CB
distance :373@CB :383@CB
distance :331@CB :384@CB
distance :333@CA :386@CB
distance :345@CB :359@CB
distance :332@CB :385@CB
distance :284@CB :290@CB
distance :214@CB :229@CB
distance :20@CA :284@CB
distance :37@CB :101@CB
distance :330@CB :384@CB
distance :458@CB :468@CB
distance :329@CB :383@CB
distance :300@CA :427@CB
distance :179@CB :186@CB
distance :459@CB :467@CB
distance :176@CB :186@CB
distance :331@CB :383@CB
distance :164@CB :176@CB
distance :86@CB :100@CB
distance :40@CB :70@CB
distance :381@CB :428@CB
distance :54@CB :63@CB
distance :383@CB :429@CB
distance :384@CB :414@CB
distance :214@CB :228@CB
setattr g lineWidth 2;
setattr g color black;
turn z 2 360 precess 20;
