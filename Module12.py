#!/usr/bin/python
# note please download RAW
# test : 208.109.181.72
# wordpress grabber

import re , urllib2 , sys

logo = '''

    `/ohdNMMMNmhs/.        
    `/dMMMMMMMMMMMMMMMms`     
   +NMMMMMMMMMMMMMMMMM/-`      
  .o+++oNMo/:/::::/mMM:        
 :    +MMMMMs    dMMMMN-   ++  
:Mo   .NMMMMMo   /MMMMMN-  yM+
hMM.   +MMMMMM-   yMMMMMd `NMd 
mMMh    yMMMMM/   `dMMMMh sMMm
dMMM:   `dMMMs+/   -MMMM:-MMMy
oMMMN.   .NMm/MN`   dMMy`mMMm.
`mMMMm`   +N/NMMy   -Nd`hMMm. 
 .dMMMd`   -dMMMM/   -.oMMd`  
   +mMMy   oMMMMMN-   :MN+    
     :sd: `NMMMMMMN-  oo`     
          `ohmNMMmh/          
                
-------- Wordpress Grabber v0.2 --------
For r00tw0rm members only! No Leechers!!


[*] Usage : python '''+sys.argv[0]+''' 127.0.0.1
'''

# found this code on stackoverflow.com/questions/19278877
def unique(seq):
    seen = set()
    return [seen.add(x) or x for x in seq if x not in seen]

print(logo)
try:
    lista = []
    s = sys.argv[1]
    page = 1
    print('\n')
    while page <= 21:
        bing = "http://www.bing.com/search?q=ip%3A"+s+"+?page_id=&count=50&first="+str(page)
        openbing  = urllib2.urlopen(bing)
        readbing = openbing.read()
        findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
        for i in range(len(findwebs)):
            wpnoclean = findwebs[i]
            findwp = re.findall('(.*?)\?page_id=', wpnoclean)
            lista.extend(findwp)

        page = page + 10

    final =  unique(lista)
    for wp in final:
        print(wp)

    try:
        for i , l in enumerate(final):
            pass
        print '\nSites Found : ' , i + 1
    except:
        pass

except IndexError:
    pass