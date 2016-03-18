- connection: lookerdata_publicdata

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- case_sensitive: false          # added by Tig to make filters case-insensitive

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations


