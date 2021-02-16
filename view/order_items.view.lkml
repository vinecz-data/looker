view: order_items {

  sql_table_name: order_items ;;
  ########## IDs, Foreign Keys, Counts ###########

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: user_id {
    type: number
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: delivered {
    type: time
    timeframes: [date, week, month, raw]
    sql: ${TABLE}.delivered_at ;;
  }

  #### MEASURES ####

  measure: count {
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]
  }

  ########## Sets ##########

    set: detail {
      fields: [id]
    }

  }
