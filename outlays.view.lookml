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
    drill_fields: [agency_name, bureau_name, account_name, subfunction_title, total_2017, change_2016_2017, change_2016_2017_percent]