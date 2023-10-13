select
    category,
    {{
        dbt_utils.pivot('monthly', dbt_utils.get_column_values(ref('sales_values_by_category'), 'monthly'), then_value = 'total_bills')
    }}
from {{ref('sales_values_by_category')}}
group by category