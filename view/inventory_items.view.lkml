view: inventory_items {
  sql_table_name: inventory_items ;;
  ## DIMENSIONS ##

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: product_id {
    type: number
    hidden: yes
    sql: ${TABLE}.product_id ;;
  }

}
