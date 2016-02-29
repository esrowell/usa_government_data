- view: outlays
  sql_table_name: |
    us_budget.outlays
  fields:

  - dimension: account_code
    type: string
    sql: ${TABLE}.account_code

  - dimension: account_name
    type: string
    sql: ${TABLE}.account_name
    links:
    - label: Website
      url: http://www.google.com/search?q={{ agency_name._value }}+{{ bureau_name._value }}+{{value}}}&btnI
    - label: Wikipedia
      url: http://www.google.com/search?q=site:wikipedia.com+{{value}- {{ bureau_name._value }}}&btnI
      icon_url: https://en.wikipedia.org/static/favicon/wikipedia.ico

  - measure: account_count
    type: count_distinct
    sql: ${account_name}
    drill_fields: [agency_code, agency_name, bureau_code, bureau_name, account_name, count]


  - dimension: agency_code
    type: string
    sql: ${TABLE}.agency_code

  - dimension: agency_name
    type: string
    sql: ${TABLE}.agency_name
    drill_fields: [bureau_name]
    links:
    - label: Website
      url: http://www.google.com/search?q={{value}}&btnI
    - label: Wikipedia
      url: http://www.google.com/search?q=site:wikipedia.com+{{value}}&btnI
      icon_url: https://en.wikipedia.org/static/favicon/wikipedia.ico

  - measure: agency_count
    type: count_distinct
    sql: ${agency_code}
    drill_fields: [agency_code, agency_name, bureau_count, account_count, count]

  - dimension: bea_category
    type: string
    sql: ${TABLE}.bea_category

  - dimension: bureau_code
    type: string
    sql: ${TABLE}.bureau_code

  - dimension: bureau_name
    type: string
    sql: ${TABLE}.bureau_name
    drill_fields: [account_name]
    links:
    - label: Website
      url: http://www.google.com/search?q={{value}}&btnI
    - label: Wikipedia
      url: http://www.google.com/search?q=site:wikipedia.com+{{value}}&btnI
      icon_url: https://en.wikipedia.org/static/favicon/wikipedia.ico
    
  - measure: bureau_count
    type: count_distinct
    sql: ${bureau_code}
    drill_fields: [agency_code, agency_name, bureau_code, bureau_name, account_count, count]


  - dimension: grant_non_grant_split
    type: string
    sql: ${TABLE}.grant_non_grant_split

  - dimension: on_or_off_budget
    type: string
    sql: ${TABLE}.on_or_off_budget

  - dimension: subfunction_code
    type: string
    sql: ${TABLE}.subfunction_code

  - dimension: subfunction_title
    type: string
    sql: ${TABLE}.subfunction_title

#   - dimension: tq
#     type: number
#     sql: FLOAT(REPLACE(${TABLE}.TQ,',',''))
#     
#   - measure: total_tq
#     type: sum
#     sql: ${tq}

  - dimension: treasury_agency_code
    type: string
    sql: ${TABLE}.treasury_agency_code

#   - dimension: y1962
#     type: string
#     sql: ${TABLE}.y1962
# 
#   - dimension: y1963
#     type: string
#     sql: ${TABLE}.y1963
# 
#   - dimension: y1964
#     type: string
#     sql: ${TABLE}.y1964
# 
#   - dimension: y1965
#     type: string
#     sql: ${TABLE}.y1965
# 
#   - dimension: y1966
#     type: string
#     sql: ${TABLE}.y1966
# 
#   - dimension: y1967
#     type: string
#     sql: ${TABLE}.y1967
# 
#   - dimension: y1968
#     type: string
#     sql: ${TABLE}.y1968
# 
#   - dimension: y1969
#     type: string
#     sql: ${TABLE}.y1969
# 
#   - dimension: y1970
#     type: string
#     sql: ${TABLE}.y1970
# 
#   - dimension: y1971
#     type: string
#     sql: ${TABLE}.y1971
# 
#   - dimension: y1972
#     type: string
#     sql: ${TABLE}.y1972
# 
#   - dimension: y1973
#     type: string
#     sql: ${TABLE}.y1973
# 
#   - dimension: y1974
#     type: string
#     sql: ${TABLE}.y1974
# 
#   - dimension: y1975
#     type: string
#     sql: ${TABLE}.y1975
# 
#   - dimension: y1976
#     type: string
#     sql: ${TABLE}.y1976
# 
#   - dimension: y1977
#     type: string
#     sql: ${TABLE}.y1977
# 
#   - dimension: y1978
#     type: string
#     sql: ${TABLE}.y1978
# 
#   - dimension: y1979
#     type: string
#     sql: ${TABLE}.y1979
# 
#   - dimension: y1980
#     type: string
#     sql: ${TABLE}.y1980
# 
#   - dimension: y1981
#     type: string
#     sql: ${TABLE}.y1981
# 
#   - dimension: y1982
#     type: string
#     sql: ${TABLE}.y1982
# 
#   - dimension: y1983
#     type: string
#     sql: ${TABLE}.y1983
# 
#   - dimension: y1984
#     type: string
#     sql: ${TABLE}.y1984
# 
#   - dimension: y1985
#     type: string
#     sql: ${TABLE}.y1985
# 
#   - dimension: y1986
#     type: string
#     sql: ${TABLE}.y1986
# 
#   - dimension: y1987
#     type: string
#     sql: ${TABLE}.y1987
# 
#   - dimension: y1988
#     type: string
#     sql: ${TABLE}.y1988
# 
#   - dimension: y1989
#     type: string
#     sql: ${TABLE}.y1989
# 
#   - dimension: y1990
#     type: string
#     sql: ${TABLE}.y1990
# 
#   - dimension: y1991
#     type: string
#     sql: ${TABLE}.y1991
# 
#   - dimension: y1992
#     type: string
#     sql: ${TABLE}.y1992
# 
#   - dimension: y1993
#     type: string
#     sql: ${TABLE}.y1993
# 
#   - dimension: y1994
#     type: string
#     sql: ${TABLE}.y1994
# 
#   - dimension: y1995
#     type: string
#     sql: ${TABLE}.y1995
# 
#   - dimension: y1996
#     type: string
#     sql: ${TABLE}.y1996
# 
#   - dimension: y1997
#     type: string
#     sql: ${TABLE}.y1997
# 
#   - dimension: y1998
#     type: string
#     sql: ${TABLE}.y1998
# 
#   - dimension: y1999
#     type: string
#     sql: ${TABLE}.y1999
# 
#   - dimension: y2000
#     type: string
#     sql: ${TABLE}.y2000
# 
#   - dimension: y2001
#     type: string
#     sql: ${TABLE}.y2001
# 
#   - dimension: y2002
#     type: string
#     sql: ${TABLE}.y2002
# 
#   - dimension: y2003
#     type: string
#     sql: ${TABLE}.y2003
# 
#   - dimension: y2004
#     type: string
#     sql: ${TABLE}.y2004
# 
#   - dimension: y2005
#     type: string
#     sql: ${TABLE}.y2005
# 
#   - dimension: y2006
#     type: string
#     sql: ${TABLE}.y2006
# 
#   - dimension: y2007
#     type: string
#     sql: ${TABLE}.y2007
# 
#   - dimension: y2008
#     type: string
#     sql: ${TABLE}.y2008
# 
#   - dimension: y2009
#     type: string
#     sql: ${TABLE}.y2009
# 
#   - dimension: y2010
#     type: string
#     sql: ${TABLE}.y2010
# 
#   - dimension: y2011
#     type: string
#     sql: ${TABLE}.y2011
# 
#   - dimension: y2012
#     type: string
#     sql: ${TABLE}.y2012
# 
#   - dimension: y2013
#     type: string
#     sql: ${TABLE}.y2013
# 
#   - dimension: y2014
#     type: string
#     sql: ${TABLE}.y2014
# 
#   - dimension: y2015
#     type: string
#     sql: ${TABLE}.y2015
# 
#   - dimension: y2016
#     type: string
#     sql: ${TABLE}.y2016
# 
  - dimension: y2017
    type: number
    sql: FLOAT(REPLACE(${TABLE}.y2017,',',''))
    
  - measure: total_y2017
    type: sum
    sql: ${y2017}
# 
#   - dimension: y2018
#     type: string
#     sql: ${TABLE}.y2018
# 
#   - dimension: y2019
#     type: string
#     sql: ${TABLE}.y2019
# 
#   - dimension: y2020
#     type: string
#     sql: ${TABLE}.y2020
# 
#   - dimension: y2021
#     type: string
#     sql: ${TABLE}.y2021

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [agency_name, bureau_name, bea_category, account_name, subfunction_title, total_y2017, count]

