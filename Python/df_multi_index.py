# -*- coding: utf-8 -*-
"""
Created on Wed Aug 24 20:06:59 2022

@author: usuario
"""

import pandas as pd

data = [[1, 2, 3, 4, 5, 6], [4, 5, 6, 7, 8, 9]]
df0 = pd.DataFrame(data = [[1, 2, 3], [4, 5, 6]], columns = ['C1', 'C2', 'C3'] )



cols = pd.MultiIndex.from_tuples([("ANAFAS", "C1"), 
                                  ("PSCAD", "C2"), 
                                  ("ATP", "C3"),])


import itertools

somelists1 = [['ANAFAS'], df0.columns]
somelists2 = [['PSCAD'], df0.columns]
somelists3 = [['ATP'], df0.columns]

cols = [x for x in itertools.product(*somelists1)] + [x for x in itertools.product(*somelists2)]

df2 = pd.DataFrame(data, columns= pd.MultiIndex.from_tuples(cols))

print(df2)

df2.loc[0:, 'ANAFAS'].loc[0:, 'C1'] = df0['C3']

print(df2)

df = df2

writer = pd.ExcelWriter('data.xlsx')

df2.to_excel(writer, sheet_name='Sheet1', merge_cells = True)

writer.close()

