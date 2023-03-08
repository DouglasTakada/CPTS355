# CptS 355 - Spring 2023 - Lab 3
# Douglas Takada

debugging = False
def debug(*s): 
     if debugging: 
          print(*s)

## problem 1 getNumCases 

CDCdata = {'King':{'Mar':2706,'Apr':3620,'May':1860,'Jun':2157,'July':5014,'Aug':4327,'Sep':2843},  
'Pierce':{'Mar':460,'Apr':965,'May':522,'Jun':647,'July':2470,'Aug':1776,'Sep':1266},  
'Snohomish':{'Mar':1301,'Apr':1145,'May':532,'Jun':568,'July':1540,'Aug':1134,'Sep':811},  
'Spokane':{'Mar':147,'Apr':222,'May':233,'Jun':794,'July':2412,'Aug':1530,'Sep':1751},  
'Whitman' : {'Apr':7,'May':5,'Jun':19,'July':51,'Aug':514,'Sep':732, 'Oct':278} } 
 

def getNumCases(data, countries, months):
     cases = 0
     for country in countries:
          if data.get(country) is not None:
               for month in months:
                    if data.get(country).get(month) is not None:
                         cases += data.get(country).get(month)
     return cases


## problem 2 getMonthlyCases

def getMonthlyCases(data,countries,months):
     

from functools import reduce
## problem 3 mostCases 

## problem 4a) searchDicts(L,k)
## problem 4b) searchDicts2(L,k)

## problem 5 - getLongest

## problem 6 - apply2nextN 