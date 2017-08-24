# Loans by the Development Credit Athority.
#  Original data was found here.
# http://catalog.data.gov/dataset/development-credit-authority-dca-data-set-loan-transactions

explore: usaid_loans {}

view: usaid_loans {
  sql_table_name: (SELECT
      DATE(CONCAT( end_year, '-', end_month, '-', end_day)) as end_date_fixed
      ,*
     FROM (
      SELECT
        NTH(3,SPLIT(end_date,'/')) as end_year
        , NTH(1,SPLIT(end_date,'/')) as end_month
        , NTH(2,SPLIT(end_date,'/')) as end_day
        , *
      FROM
        [disco-parsec-659:usa_data.usaid_loans])
    )
     ;;

    dimension: transaction_report_id {
      type: string
      primary_key: yes
      sql: ${TABLE}.transaction_report_id ;;
    }

    dimension: amount_usd {
      type: number
      sql: ${TABLE}.amount_usd ;;
      value_format_name: usd_0
    }

    measure: total_amount_usd {
      type: sum
      sql: ${amount_usd} ;;
      value_format_name: usd_0
    }

    dimension: business_sector {
      type: string
      sql: ${TABLE}.business_sector ;;
    }

    dimension: business_size {
      type: string
      sql: ${TABLE}.business_size ;;
    }

    dimension: city_town {
      type: string
      sql: ${TABLE}.city_town ;;
    }

    dimension: currency_name {
      type: string
      sql: ${TABLE}.currency_name ;;
    }

    dimension: end_date_raw {
      type: string
      sql: ${TABLE}.end_date ;;
      hidden: yes
    }

    dimension_group: end {
      type: time
      timeframes: [date, week, month, year]
      sql: ${TABLE}.end_date_fixed ;;
    }

    dimension: guarantee_country_name {
      type: string
      sql: ${TABLE}.guarantee_country_name ;;
    }

    dimension: guarantee_number {
      type: string
      sql: ${TABLE}.guarantee_number ;;
    }

    dimension: is_first_time_borrower {
      type: yesno
      sql: INTEGER(${TABLE}.is_first_time_borrower) > 0 ;;
    }

    dimension: is_woman_owned {
      type: yesno
      sql: INTEGER(${TABLE}.is_woman_owned) > 0 ;;
    }

    dimension: latitude {
      type: string
      sql: FLOAT(${TABLE}.latitude) ;;
    }

    dimension: longitude {
      type: number
      sql: FLOAT(${TABLE}.longitude) ;;
    }

    dimension: loan_location {
      type: location
      sql_latitude: ${latitude} ;;
      sql_longitude: ${longitude} ;;
    }

    dimension: loan_location_rounded {
      type: location
      sql_latitude: round(${latitude}, 10) ;;
      sql_longitude: round(${longitude}, 10) ;;
    }

    dimension: region_name {
      type: string
      sql: ${TABLE}.region_name ;;
    }

    dimension: state_province_region_code {
      type: string
      sql: ${TABLE}.state_province_region_code ;;
    }

    dimension: state_province_region_country_name {
      type: string
      sql: ${TABLE}.state_province_region_country_name ;;
    }

    dimension: state_province_region_name {
      type: string
      sql: ${TABLE}.state_province_region_name ;;
    }

    measure: count {
      type: count
      approximate_threshold: 100000
      drill_fields: [currency_name, guarantee_country_name, state_province_region_name, region_name, state_province_region_country_name]
    }
  }
