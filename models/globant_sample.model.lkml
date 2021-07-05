connection: "snowlooker"
label: "Globant Looker Study"

include: "/view/*.view" # include all the views
include: "/**/*.dashboard" # include all the dashboards

datagroup: globant_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: globant_sample_default_datagroup

#### Source of Explore ####


explore: new_order_items {
  label: "New Order Items"
  view_name: order_items

  join: users {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: inventory_items {
    #Left Join only brings in items that have been sold as order_item
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: products {
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }

}
