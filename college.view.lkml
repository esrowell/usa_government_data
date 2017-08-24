include: "college_generated.view.lkml"
explore: college {}

view: college {
  extends: [college_generated]

  derived_table: {
    persist_for: "1000 hours"
    sql: (SELECT * FROM
        (SELECT 1996 as year,* from college.merged_1996),
        (SELECT 1997 as year,* from college.merged_1997),
        (SELECT 1998 as year,* from college.merged_1998),
        (SELECT 1999 as year,* from college.merged_1999),
        (SELECT 2000 as year,* from college.merged_2000),
        (SELECT 2001 as year,* from college.merged_2001),
        (SELECT 2002 as year,* from college.merged_2002),
        (SELECT 2003 as year,* from college.merged_2003),
        (SELECT 2004 as year,* from college.merged_2004),
        (SELECT 2005 as year,* from college.merged_2005),
        (SELECT 2006 as year,* from college.merged_2006),
        (SELECT 2007 as year,* from college.merged_2007),
        (SELECT 2008 as year,* from college.merged_2008),
        (SELECT 2009 as year,* from college.merged_2009),
        (SELECT 2010 as year,* from college.merged_2010),
        (SELECT 2011 as year,* from college.merged_2011),
        (SELECT 2012 as year,* from college.merged_2012),
        (SELECT 2013 as year,* from college.merged_2013)
      )
       ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
    value_format: "0000"
  }

  measure: row_count {
    type: count
  }

  measure: average_instate_tuition {
    type: average
    sql: ${tuitionfee_in} ;;
    value_format_name: usd_0
  }

  # School

  dimension: instnm {
    view_label: "School"
    label: "Name"
  }

  dimension: city {
    view_label: "School"
    label: "City"
  }

  dimension: zip {
    view_label: "School"
    label: "Zip"
  }

  dimension: accredagency {
    view_label: "School"
    label: "Accrediting Agency"
  }

  dimension: insturl {
    view_label: "School"
    label: "School Url"
  }

  dimension: opeid6 {
    view_label: "School"
    label: "ID"
  }

  dimension: stabbr {
    view_label: "School"
    label: "State"
  }

  measure: school_count {
    view_label: "School"
    type: count_distinct
    sql: ${opeid} ;;
    drill_fields: [opeid, instnm, city, stabbr]
  }
}
