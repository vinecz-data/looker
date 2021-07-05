- dashboard: NEW_DASH
  title: NEW_DASH
  layout: newspaper
  crossfilter_enabled: true
  elements:
  - title: Orders by Month
    name: Orders by Month
    model: globant_sample
    explore: new_order_items
    type: looker_line
    fields: [order_items.delivered_month, order_items.count]
    fill_fields: [order_items.delivered_month]
    sorts: [order_items.delivered_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count, id: order_items.count,
            name: Order Items}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      order_items.count: "#10C871"
    swap_axes: false
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 5
    col: 0
    width: 10
    height: 7
  - name: Globant - Orders By Country
    title: Globant - Orders By Country
    model: globant_sample
    explore: new_order_items
    type: looker_pie
    fields: [order_items.count, users.country]
    sorts: [order_items.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    series_colors:
      USA: "#CADB68"
      UK: "#215AC8"
    series_labels: {}
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count, id: order_items.count,
            name: Order Items}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 5
    col: 10
    width: 6
    height: 7
  - name: Globant - Orders By Category - TOP 10
    title: Globant - Orders By Category - TOP 10
    model: globant_sample
    explore: new_order_items
    type: looker_grid
    fields: [order_items.count, products.category]
    sorts: [order_items.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      products.category: 187
    series_cell_visualizations:
      order_items.count:
        is_active: true
        palette:
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
    series_text_format:
      products.category:
        fg_color: "#12165C"
        bold: true
        align: left
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    header_font_color: "#1E0030"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      order_items.count: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 12
    col: 0
    width: 8
    height: 6
  - name: Globant - Orders By Category - Bottom 10
    title: Globant - Orders By Category - Bottom 10
    model: globant_sample
    explore: new_order_items
    type: looker_grid
    fields: [order_items.count, products.category]
    sorts: [order_items.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      products.category: 187
    series_cell_visualizations:
      order_items.count:
        is_active: true
        palette:
          palette_id: e9b76cdc-a07c-89bd-483b-ba034fd1c74f
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
          custom_colors:
          - "#F16565"
          - "#FFFFFF"
          - "#DE0B0B"
        value_display: true
    series_text_format:
      products.category:
        fg_color: "#12165C"
        bold: true
        align: left
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '10'
    header_font_color: "#1E0030"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      order_items.count: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 12
    col: 8
    width: 8
    height: 6
  - name: Globant - Total Orders Big Number
    title: Globant - Total Orders Big Number
    model: globant_sample
    explore: new_order_items
    type: single_value
    fields: [order_items.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
    custom_color: "#000000"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 6c27c30e-5523-4080-82ae-272146e699d0,
          palette_id: dcfbcfd3-50be-453f-badd-e340864c3b1a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 0
    col: 0
    width: 5
    height: 5
  - name: Globant - Average Age Big Number
    title: Globant - Average Age Big Number
    model: globant_sample
    explore: new_order_items
    type: single_value
    fields: [users.average_age]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 0
    col: 10
    width: 6
    height: 5
  - name: Globant - Total Users Big Number
    title: Globant - Total Users Big Number
    model: globant_sample
    explore: new_order_items
    type: single_value
    fields: [users.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 0
    col: 5
    width: 5
    height: 5
  - name: Globant - Orders by State and Item
    title: Globant - Orders by State and Item
    model: globant_sample
    explore: new_order_items
    type: looker_map
    fields: [products.item_name, users.state, order_items.count]
    sorts: [products.item_name]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 44.5278427984555
    map_longitude: -96.94335937500001
    map_zoom: 3
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 10
    col: 16
    width: 8
    height: 8
  - name: Globant - Brand by Tag Cloud
    title: Globant - Brand by Tag Cloud
    model: globant_sample
    explore: new_order_items
    type: looker_wordcloud
    fields: [order_items.count, products.brand]
    sorts: [order_items.count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    rotation: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", order_items.delivered_date, products.brand,
      products.item_name, users.full_name, users.state, order_items.count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels: {}
    series_cell_visualizations:
      order_items.count:
        is_active: true
    series_text_format:
      products.brand: {}
      order_items.delivered_date: {}
    table_theme: gray
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 44.5278427984555
    map_longitude: -96.94335937500001
    map_zoom: 3
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 0
    col: 16
    width: 8
    height: 10
  - name: Globant - Orders Table
    title: Globant - Orders Table
    model: globant_sample
    explore: new_order_items
    type: looker_grid
    fields: [order_items.count, products.brand, products.item_name, order_items.delivered_date,
      users.full_name, users.state]
    sorts: [order_items.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", order_items.delivered_date, products.brand,
      products.item_name, users.full_name, users.state, order_items.count]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      order_items.count:
        is_active: true
    series_text_format:
      products.brand: {}
      order_items.delivered_date: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#000000"
    header_background_color: "#FCBF00"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 44.5278427984555
    map_longitude: -96.94335937500001
    map_zoom: 3
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Delivered Month: order_items.delivered_month
      Brand: products.brand
      Country: users.country
      Age: users.age
      Full Name: users.full_name
    row: 18
    col: 0
    width: 24
    height: 12
  filters:
  - name: Delivered Month
    title: Delivered Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: globant_sample
    explore: new_order_items
    listens_to_filters: []
    field: order_items.delivered_month
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: globant_sample
    explore: new_order_items
    listens_to_filters: []
    field: products.brand
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: globant_sample
    explore: new_order_items
    listens_to_filters: []
    field: users.country
  - name: Full Name
    title: Full Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: globant_sample
    explore: new_order_items
    listens_to_filters: []
    field: users.full_name
  - name: Age
    title: Age
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: globant_sample
    explore: new_order_items
    listens_to_filters: []
    field: users.age
