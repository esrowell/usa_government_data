- explore: budget_outlays
  joins:
  - join: item_year_amount
    sql_on: ${id} = ${item_year_amount.budget_item_id}
    relationship: one_to_many
    
  - join: budget_year_facts
    sql_on: ${item_year_amount.year} = ${budget_year_facts.year}
    relationship: many_to_one
  

- view: budget_outlays
  derived_table:
    persist_for: 10000 hours
    sql: |
      (SELECT * FROM (
        SELECT *, ROW_NUMBER() OVER () as id FROM us_budget.outlays)
      )
      
  fields:
  - dimension: id
    primary_key: true

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
      url: http://www.google.com/search?q=site:wikipedia.com+{{value}}- {{ bureau_name._value }}}&btnI
      icon_url: https://en.wikipedia.org/static/favicon/wikipedia.ico

  - measure: account_count
    type: count_distinct
    sql: ${account_name}
    drill_fields: [agency_code, bureau_code, account_name, total_2017, change_2016_2017, change_2016_2017_percent, count]


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
    drill_fields: [agency_code, agency_name, bureau_count, account_count, total_2017, change_2016_2017, change_2016_2017_percent, count]

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
    drill_fields: [agency_code, bureau_code, bureau_name, account_count, total_2017,change_2016_2017, change_2016_2017_percent, count]


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

  - dimension: treasury_agency_code
    type: string
    sql: ${TABLE}.treasury_agency_code

  - dimension: y2016
    type: string
    sql: FLOAT(REPLACE(${TABLE}.y2016,',',''))/1000
    value_format_name: usd_0
    
  - measure: total_2016
    type: sum
    sql: ${y2016}
    value_format_name: usd_0

  - dimension: y2017
    type: number
    sql: FLOAT(REPLACE(${TABLE}.y2017,',',''))/1000
    value_format_name: usd_0
    
  - measure: change_2016_2017
    type: number
    sql: ${total_2017}-${total_2016}
    value_format_name: usd_0
    
  - measure: change_2016_2017_percent
    type: number
    sql: ${change_2016_2017}/${total_2016}
    value_format_name: percent_3
    
  - measure: total_2017
    type: sum
    sql: ${y2017}
    value_format_name: usd_0
    
  - measure: count
    label: Number of Outlays
  
    type: count
    approximate_threshold: 100000
    drill_fields: detail*
    
  sets:
    dimensions: [agency_name, bureau_name, account_name, subfunction_title]
    detail: [dimensions*, total_2017, change_2016_2017, change_2016_2017_percent]  
    
# take each of the year columns and convert them into a single column  
- view: item_year_amount
  derived_table:
    persist_for: 10000 hours
    sql: |
      (SELECT *, FLOAT(REPLACE(amount,',',''))/1000 as budget, ROW_NUMBER() OVER() as id FROM
         (SELECT id as budget_item_id, 1963 as year, y1963 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1964 as year, y1964 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1965 as year, y1965 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1966 as year, y1966 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1967 as year, y1967 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1968 as year, y1968 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1969 as year, y1969 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1970 as year, y1970 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1971 as year, y1971 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1972 as year, y1972 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1973 as year, y1973 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1974 as year, y1974 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1975 as year, y1975 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1976 as year, y1976 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1977 as year, y1977 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1978 as year, y1978 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1979 as year, y1979 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1980 as year, y1980 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1981 as year, y1981 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1982 as year, y1982 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1983 as year, y1983 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1984 as year, y1984 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1985 as year, y1985 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1986 as year, y1986 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1987 as year, y1987 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1988 as year, y1988 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1989 as year, y1989 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1990 as year, y1990 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1991 as year, y1991 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1992 as year, y1992 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1993 as year, y1993 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1994 as year, y1994 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1995 as year, y1995 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1996 as year, y1996 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1997 as year, y1997 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1998 as year, y1998 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 1999 as year, y1979 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2000 as year, y2000 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2001 as year, y2001 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2002 as year, y2002 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2003 as year, y2003 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2004 as year, y2004 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2005 as year, y2005 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2006 as year, y2006 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2007 as year, y2007 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2008 as year, y2008 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2009 as year, y2009 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2010 as year, y2010 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2011 as year, y2011 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2012 as year, y2012 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2013 as year, y2013 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2014 as year, y2014 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2015 as year, y2015 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2016 as year, y2016 as amount FROM ${budget_outlays.SQL_TABLE_NAME}),
         (SELECT id as budget_item_id, 2017 as year, y2017 as amount FROM ${budget_outlays.SQL_TABLE_NAME})
      )
  
  fields:
  - dimension: id
    primary_key: true
  
  - dimension: budget_item_id
  
  - dimension: year
    type: number
    value_format: "0000"
  
  - measure: total_amount
    type: sum
    sql: ${TABLE}.budget
    value_format_name: usd_0
    
  - measure: percent_of_annual_budget
    type: number
    sql: FLOAT(${total_amount}) / ${budget_year_facts.total_annual_budget}
    value_format_name: percent_3
    drill_fields: [budget_outlays.dimensions*,percent_of_annual_budget]
  
- explore: budget_year_facts
- view: budget_year_facts
  derived_table:
    persist_for: 10000 hours
    sql: |
      SELECT year, SUM(budget) as annual_budget FROM ${item_year_amount.SQL_TABLE_NAME} GROUP BY 1
  fields:
  - dimension: year
    primary_key: true
    #hidden: true
    
  - dimension: annual_budget
    
  - measure: total_annual_budget
    type: sum
    sql: FLOOR(${TABLE}.annual_budget)
    
