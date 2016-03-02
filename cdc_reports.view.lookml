- explore: cdc_reports
- view: cdc_reports
  sql_table_name: |
      [disco-parsec-659:cdc_project_tycho.reports]
  fields:

  - dimension: cases
    type: number
    sql: FLOAT(${TABLE}.cases)
    
  - measure: total_cases
    type: sum
    sql: ${cases}

  - dimension: disease
    type: string
    sql: ${TABLE}.disease

  - dimension: epi_week
    type: number
    sql: ${TABLE}.epi_week
    
  - dimension: epi_year
    type: number
    sql: FLOOR(${epi_week}/100)

  - dimension: incidence_per_100000
    type: number
    sql: ${TABLE}.incidence_per_100000

  - dimension: loc
    type: string
    sql: ${TABLE}.loc

  - dimension: loc_type
    type: string
    sql: ${TABLE}.loc_type

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

