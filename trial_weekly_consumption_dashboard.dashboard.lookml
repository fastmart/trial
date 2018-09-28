- dashboard: trial_weekly_consumption_dashboard
  title: Weekly Consumption Dashboard
  layout: newspaper
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: '1'
    name: '1'
    model: fastmart
    explore: posds_wkly_fct
    type: rg_subtotal
    fields:
    - posds_prod_dim.selected_product_level_1
    - posds_prod_dim.selected_product_level_2
    - posds_prod_dim.selected_product_level_3
    - posds_roll_time_dim_day.perd_name
    - posds_wkly_fct.change_in_pos_value
    pivots:
    - posds_roll_time_dim_day.perd_name
    filters: {}
    sorts:
    - posds_roll_time_dim_day.perd_name desc
    - posds_wkly_fct.change_in_pos_value desc 0
    limit: 500
    query_timezone: America/New_York
    theme: classic
    show_full_field_name: false
    series_types: {}
    listen:
      Customer Name: posds_cust_dim_enhanced.customer_name
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
      Product Level 1: posds_prod_dim.choose_product_level_1
      Product Level 2: posds_prod_dim.choose_product_level_2
      Product Level 3: posds_prod_dim.choose_product_level_3
      Measure 1: posds_wkly_fct.measure_selector_changes
    title_hidden: true
    row: 0
    col: 0
    width: 24
    height: 5
  - title: '2'
    name: '2'
    model: fastmart
    explore: posds_wkly_fct
    type: rg_subtotal
    fields:
    - posds_prod_dim.selected_product_level_1
    - posds_prod_dim.selected_product_level_2
    - posds_prod_dim.selected_product_level_3
    - posds_roll_time_dim_day.perd_name
    - posds_wkly_fct.change_in_pos_value
    pivots:
    - posds_roll_time_dim_day.perd_name
    filters: {}
    sorts:
    - posds_roll_time_dim_day.perd_name desc
    - posds_wkly_fct.change_in_pos_value desc 0
    limit: 500
    query_timezone: America/New_York
    theme: classic
    show_full_field_name: false
    series_types: {}
    listen:
      Customer Name: posds_cust_dim_enhanced.customer_name
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
      Product Level 1: posds_prod_dim.choose_product_level_1
      Product Level 2: posds_prod_dim.choose_product_level_2
      Product Level 3: posds_prod_dim.choose_product_level_3
      Measure 2: posds_wkly_fct.measure_selector_changes
    title_hidden: true
    row: 5
    col: 0
    width: 24
    height: 5
  - title: '3'
    name: '3'
    model: fastmart
    explore: posds_wkly_fct
    type: rg_subtotal
    fields:
    - posds_prod_dim.selected_product_level_1
    - posds_prod_dim.selected_product_level_2
    - posds_prod_dim.selected_product_level_3
    - posds_roll_time_dim_day.perd_name
    - posds_wkly_fct.change_in_pos_value
    pivots:
    - posds_roll_time_dim_day.perd_name
    filters: {}
    sorts:
    - posds_roll_time_dim_day.perd_name desc
    - posds_wkly_fct.change_in_pos_value desc 0
    limit: 500
    query_timezone: America/New_York
    theme: classic
    show_full_field_name: false
    series_types: {}
    listen:
      Customer Name: posds_cust_dim_enhanced.customer_name
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
      Product Level 1: posds_prod_dim.choose_product_level_1
      Product Level 2: posds_prod_dim.choose_product_level_2
      Product Level 3: posds_prod_dim.choose_product_level_3
      Measure 3: posds_wkly_fct.measure_selector_changes
    title_hidden: true
    row: 10
    col: 0
    width: 24
    height: 5
  - title: Measure 1
    name: Measure 1
    model: fastmart
    explore: posds_wkly_fct
    type: looker_line
    fields:
    - posds_wkly_fct.pos_unit_sales
    - posds_wkly_fct.pos_unit_sales_ya
    - posds_wkly_fct.pos_unit_sales_cya_percent
    - posds_roll_time_dim_day.day_week_of_year
    fill_fields:
    - posds_roll_time_dim_day.day_week_of_year
    filters:
      posds_roll_time_dim_day.perd_name: L52W
      posds_cust_dim_enhanced.customer_name: Demo Customer US - P&G Only
    sorts:
    - posds_wkly_fct.pos_unit_sales desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: this_year
      label: This Year
      expression: if(${posds_wkly_fct.pos_unit_sales}=0,null,${posds_wkly_fct.pos_unit_sales})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year
      label: Last Year
      expression: if(${posds_wkly_fct.pos_unit_sales_ya}=0,null,${posds_wkly_fct.pos_unit_sales_ya})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    colors:
    - "#013DAF"
    - "#0095d9"
    - "#8dd8f5"
    - "#9EA39D"
    - "#383838"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    series_colors:
      last_year: "#F9C801"
    series_types:
      posds_wkly_fct.pos_unit_sales_cya_percent: column
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: this_year
        name: This Year
        axisId: this_year
      - id: last_year
        name: Last Year
        axisId: last_year
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      unpinAxis: false
      tickDensity: default
      type: linear
    - label:
      orientation: right
      series:
      - id: posds_wkly_fct.pos_unit_sales_cya_percent
        name: 02 Measure 1.5 POS Unit % Chg
        axisId: posds_wkly_fct.pos_unit_sales_cya_percent
      showLabels: true
      showValues: true
      maxValue: 0.2
      minValue: -0.2
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines:
    - reference_type: line
      line_value: '0'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: "-"
    show_null_points: false
    interpolation: linear
    hidden_fields:
    - posds_wkly_fct.pos_unit_sales
    - posds_wkly_fct.pos_unit_sales_ya
    listen:
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
    title_hidden: true
    row: 15
    col: 0
    width: 24
    height: 7
  - title: Measure 2
    name: Measure 2
    model: fastmart
    explore: posds_wkly_fct
    type: looker_line
    fields:
    - posds_wkly_fct.pos_dollar_sales
    - posds_wkly_fct.pos_dollar_sales_ya
    - posds_wkly_fct.pos_dollar_sales_cya_percent
    - posds_roll_time_dim_day.day_week_of_year
    fill_fields:
    - posds_roll_time_dim_day.day_week_of_year
    filters:
      posds_roll_time_dim_day.perd_name: L52W
      posds_cust_dim_enhanced.customer_name: Demo Customer US - P&G Only
    sorts:
    - posds_wkly_fct.pos_dollar_sales desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: this_year
      label: This Year
      expression: if(${posds_wkly_fct.pos_unit_sales}=0,null,${posds_wkly_fct.pos_unit_sales})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - table_calculation: last_year
      label: Last Year
      expression: if(${posds_wkly_fct.pos_unit_sales_ya}=0,null,${posds_wkly_fct.pos_unit_sales_ya})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - table_calculation: this_year_2
      label: This Year $
      expression: if(${posds_wkly_fct.pos_dollar_sales}=0,null,${posds_wkly_fct.pos_dollar_sales})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year_3
      label: Last Year $
      expression: if(${posds_wkly_fct.pos_dollar_sales_ya}=0,null,${posds_wkly_fct.pos_dollar_sales_ya})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    series_colors:
      posds_wkly_fct.pos_unit_sales_cya_percent: "#e8152e"
      posds_wkly_fct.pos_dollar_sales_cya_percent: "#013DAF"
      last_year_3: "#F9C801"
    series_types:
      posds_wkly_fct.pos_unit_sales_cya_percent: column
      posds_wkly_fct.pos_dollar_sales_cya_percent: column
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: this_year_2
        name: This Year $
        axisId: this_year_2
      - id: last_year_3
        name: Last Year $
        axisId: last_year_3
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    - label:
      orientation: right
      series:
      - id: posds_wkly_fct.pos_dollar_sales_cya_percent
        name: 02 Measure 2.5 POS $ % Chg
        axisId: posds_wkly_fct.pos_dollar_sales_cya_percent
      showLabels: true
      showValues: true
      maxValue: 0.2
      minValue: -0.2
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines:
    - reference_type: line
      line_value: '0'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: "-"
    swap_axes: false
    show_null_points: false
    interpolation: linear
    hidden_fields:
    - posds_wkly_fct.pos_dollar_sales_ya
    - posds_wkly_fct.pos_dollar_sales
    listen:
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
    title_hidden: true
    row: 22
    col: 0
    width: 24
    height: 8
  - title: Measure 3
    name: Measure 3
    model: fastmart
    explore: posds_wkly_fct
    type: looker_line
    fields:
    - posds_roll_time_dim_day.day_week_of_year
    - posds_wkly_fct.pos_su_sales
    - posds_wkly_fct.pos_su_sales_ya
    - posds_wkly_fct.pos_su_sales_cya_percent
    fill_fields:
    - posds_roll_time_dim_day.day_week_of_year
    filters:
      posds_roll_time_dim_day.perd_name: L52W
      posds_cust_dim_enhanced.customer_name: Demo Customer US - P&G Only
    sorts:
    - posds_roll_time_dim_day.day_week_of_year
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: this_year_su
      label: This Year SU
      expression: if(${posds_wkly_fct.pos_su_sales}=0,null,${posds_wkly_fct.pos_su_sales})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year_su
      label: Last Year SU
      expression: if(${posds_wkly_fct.pos_su_sales_ya}=0,null,${posds_wkly_fct.pos_su_sales_ya})
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    series_colors:
      posds_wkly_fct.pos_unit_sales_cya_percent: "#e8152e"
      posds_wkly_fct.pos_dollar_sales_cya_percent: "#f2163d"
      last_year_su: "#F9C801"
    series_types:
      posds_wkly_fct.pos_unit_sales_cya_percent: column
      posds_wkly_fct.pos_dollar_sales_cya_percent: column
      posds_wkly_fct.pos_su_sales_cya_percent: column
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: this_year_su
        name: This Year SU
        axisId: this_year_su
      - id: last_year_su
        name: Last Year SU
        axisId: last_year_su
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    - label:
      orientation: right
      series:
      - id: posds_wkly_fct.pos_su_sales_cya_percent
        name: 02 Measure 3.5 POS SU Sales CYA %
        axisId: posds_wkly_fct.pos_su_sales_cya_percent
      showLabels: true
      showValues: true
      maxValue: 0.2
      minValue: -0.2
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines:
    - reference_type: line
      line_value: '0'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: "-"
    swap_axes: false
    show_null_points: false
    interpolation: linear
    hidden_fields:
    - posds_wkly_fct.pos_su_sales_ya
    - posds_wkly_fct.pos_su_sales
    listen:
      Market Sector: posds_prod_dim.sector
      Market Sub Sector: posds_prod_dim.sub_sector
      Market Category: posds_prod_dim.category
    title_hidden: true
    row: 30
    col: 0
    width: 24
    height: 7
  filters:
  - name: Customer Name
    title: Customer Name
    type: field_filter
    default_value: Demo Customer US - P&G Only
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_cust_dim_enhanced.customer_name
  - name: Market Sector
    title: Market Sector
    type: field_filter
    default_value: BC
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.sector
  - name: Market Sub Sector
    title: Market Sub Sector
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.sub_sector
  - name: Market Category
    title: Market Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.category
  - name: Product Level 1
    title: Product Level 1
    type: field_filter
    default_value: SECTR^_NAME
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.choose_product_level_1
  - name: Product Level 2
    title: Product Level 2
    type: field_filter
    default_value: SUB^_SECTR^_NAME
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.choose_product_level_2
  - name: Product Level 3
    title: Product Level 3
    type: field_filter
    default_value: CATEG^_NAME
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_prod_dim.choose_product_level_3
  - name: Measure 1
    title: Measure 1
    type: field_filter
    default_value: POS Unit Sales CYA Percent
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_wkly_fct.measure_selector_changes
  - name: Measure 2
    title: Measure 2
    type: field_filter
    default_value: POS Dollar Sales CYA Percent
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_wkly_fct.measure_selector_changes
  - name: Measure 3
    title: Measure 3
    type: field_filter
    default_value: POS SU Sales CYA Percent
    allow_multiple_values: true
    required: false
    model: fastmart
    explore: posds_wkly_fct
    listens_to_filters: []
    field: posds_wkly_fct.measure_selector_changes
