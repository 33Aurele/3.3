
from PyOrgMode.PyOrgMode import PyOrgMode

base = PyOrgMode.OrgDataStructure()

base.load_from_file("temp.org")

for h1 in base.root.content:
    for h2 in h1.content:
        for h3 in h2.content:
            print ("<div class=\"block ",end='')
            print (' '.join((h3.tags+h2.tags)+h1.tags),end='')
            print ("\">")
            
            print ("<p><h2>",end='')
            print (h3.heading.rstrip(),end='')
            print ("</h2>")
            
            print("<h5> Tags: ",end='')
            print(', '.join((h1.tags+h2.tags)+h3.tags),end='')
            print("</h5>",end='')
            
            print ('<br>'.join(h3.content),end='')
            print ("</p></div>")
                
