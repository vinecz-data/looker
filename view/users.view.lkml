

view: users {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: users ;;


  ### Dimensions ###

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    tags: ["user_id","User ID created using Tags"]
  }

  dimension: first_name {
    sql: INITCAP(${TABLE}.first_name) ;;

  }

  dimension: last_name {
    sql: INITCAP(${TABLE}.last_name) ;;

  }

  dimension: full_name {
    sql: ${first_name} || ' ' || ${last_name};;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_range {
    type: tier
    tiers: [0, 10, 20, 30, 40, 50, 60, 70]
    style: integer
    sql: ${age} ;;
  }

  dimension: city {
    sql: ${TABLE}.city ;;
    drill_fields: [zip]
  }

  dimension: state {
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
    drill_fields: [zip, city]
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: country  {
    map_layer_name: countries
    drill_fields: [state, city]
    sql: CASE WHEN ${TABLE}.state = 'UK' THEN 'United Kingdom'
              ELSE ${TABLE}.country
         END  ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.created_at ;;
  }

### Measures ###

  measure: count {
    type: count
    drill_fields:[detail*]
  }

  measure: count_percent_of_total {
    label: "Count (Percent of Total)"
    type: percent_of_total
    sql: ${count} ;;
    drill_fields: [detail*]
  }

  measure: average_age {
    type: average
    value_format_name: decimal_2
    sql: ${age} ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [id]
  }

  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}
