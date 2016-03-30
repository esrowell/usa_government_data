- explore: cdc_reports
  label: CDC Reports
  
- view: cdc_reports
  view_label: CDC Reports
  sql_table_name: |
      [cdc.project_tycho_reports]
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
    
  - dimension_group: reported
    type: time
    timeframes: [week, month, quarter, year, week_of_year]
    sql: DATE_ADD(CONCAT(STRING(INTEGER(${epi_year})), "-01-01"), ${epi_week_of_year} - 1, "WEEK")

  - dimension: epi_week
    type: number
    sql: ${TABLE}.epi_week
    hidden: true
    
  - dimension: epi_week_of_year
    type: number
    sql:  ${epi_week} - ${epi_year} * 100
    hidden: true
    
  - dimension: epi_year
    type: number
    sql: FLOOR(${epi_week}/100)
    hidden: true

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

