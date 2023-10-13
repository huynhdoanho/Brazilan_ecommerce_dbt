{{config(materialized="table")}}
select
	rp.product_id ,
	pcnt.product_category_name_english
from {{ref("raw_products")}} rp
join {{ref("product_category_name_translation")}} pcnt
on pcnt.product_category_name  = rp.product_category_name