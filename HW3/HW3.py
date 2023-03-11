# CptS 355 - Spring 2023 - Assignment 3 - Python

# Please include your name and the names of the students with whom you discussed any of the problems in this homework
# Name: Douglas Takada
# Collaborators: 

debugging = False
def debug(*s): 
     if debugging: 
          print(*s)

from functools import reduce

## problem 1(a) - aggregate_log  - 5%

def aggregate_log(input):
     new_dict = {}
     for dicts in input:
          # print(input.get(dicts))
          if input.get(dicts) is not None:
               for days in input.get(dicts):
                    if new_dict.get(days) is None:
                         new_dict[days] = 0
                    new_dict[days] += input.get(dicts).get(days)
     return new_dict

## problem 1(b) - combine_dict– 6%

def combine_dict(dict1, dict2):
     new_dict = {}
     for key in dict1:
          if new_dict.get(key) is None:
               new_dict[key] = 0
          new_dict[key] += dict1.get(key)
     for key in dict2:
          if new_dict.get(key) is None:
               new_dict[key] = 0
          new_dict[key] += dict2.get(key)
     return new_dict

## problem 1(c) - merge_logs– 12%

def merge_logs(lst):
     new_dict = {}
     for dicts in lst:
          for key in dicts.keys():
               if new_dict.get(key) is None:
                    new_dict[key] = {}
               new_dict[key] = combine_dict(new_dict[key], dicts.get(key))

     return new_dict

## problem 2(a) - most_hours – 15%

from functools import reduce

def most_hours(data):
    temp = reduce(lambda x, y: x if sum(x[1].values()) > sum(y[1].values()) else y, data.items())
    return (temp[0],sum(temp[1].values()))

## problem 2(b) - filter_log – 15%

def filter_log(data,day, hours):
     temp = list(filter(lambda x: x[0] if (x[1].get(day) is not None and x[1].get(day) >= hours) else None, data.items()))
     return list(map(lambda x : x[0], temp))

## problem 3 - graph_cycle – 12% 

def graph_cycle(graph, start):
     def helper(graph, start,acc):
          if graph.get(start)[0] is None:
               return None
          elif start not in new_list:
               acc.append(start)
               return helper(graph, graph.get(start)[0],acc)
          else:
               acc.append(start)
               return acc
     
     new_list = []
     temp = helper(graph, start,new_list)
     #Cutting out extra letters not in loop
     return temp[temp.index(temp[-1],0,-1):]

## problem 4 - filter_iter – 15% 

class filter_iter(object):
     def __init__(self,op, n,it):
          self.input1 = it
          self.op = op
          self.n = n
          self.current = self._getNextInput()

     def _getNextInput(self):
          try:
               current = self.input1.__next__()
          except:
               current = None
          return current
     
     def __next__(self):
          if self.current is None:
               raise StopIteration
          
          temp_n = self.n
          total = self.current
          self.current = self._getNextInput()
          while (temp_n >1):

               if self.current is not None:
                    total = self.op(total, self.current)
               else:
                    break
               self.current = self._getNextInput()
               temp_n -= 1
          return total
     def __iter__(self):
          return self


## problem 5 - merge – 10% 
