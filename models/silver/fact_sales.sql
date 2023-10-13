select
    ro.order_id,
    ro.customer_id,
    ro.order_purchase_timestamp,
    roi.product_id,
    rop.payment_value,
    ro.order_status
from {{ref("raw_orders")}} ro
join {{ref("raw_order_items")}} roi
on ro.order_id = roi.order_id
join {{ref("raw_payments")}} rop
on rop.order_id = ro.order_id