import json
from pathlib import Path
m=json.loads(Path('/var/minis/workspace/fenzu_deb/metadata.json').read_text())
for c in m['classes']:
 print('\n##',c['name'])
 for x in c['methods']:
  if any(k in x['name'].lower() for k in ['group','config','default','save','reset','reload','filter','gesture','swipe','pan','long','dock','settings','header','color','toggle','stepper','margin','addnew','close','show','hide','select','viewdid','segment','cellfor','didselect','numberofrows','heightfor','trailing','leading']):
   print(f"{x['imp']:#x} {x['imp']} {x['name']} {x['types']}")
# category is exported separately from macho.py
print('\n## category UIViewController(WPGroupUI)')