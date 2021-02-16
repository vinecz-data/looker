view: products {
  sql_table_name: products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    sql: TRIM(${TABLE}.category) ;;
    drill_fields: [item_name]
  }

  dimension: item_name {
    sql: TRIM(${TABLE}.name) ;;
  }

  dimension: brand {
    sql: TRIM(${TABLE}.brand) ;;

  }

  ## MEASURES ##

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [id, item_name, brand, category]
  }

}
