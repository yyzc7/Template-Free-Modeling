import codecs

f = codecs.open('T0967_6QFJ.ss2', mode='r', encoding='utf-8')  
line = f.readline()   
list1 = []
while line:
    a = line.split()
    b = a[2:3]   
    list1.append(b)  
    line = f.readline()
f.close()


file = open('6QFJ.ss','w')
for i in list1:
    # print(''.join(i))
	file.write(''.join(i))
file.close()

