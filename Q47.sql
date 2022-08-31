/*
Provide the description of each item, along with the total cost of the quantity on hand (rounded to the nearest whole dollar), and the associated primary vendor.
*/

SELECT
item_description
, ROUND(item_cost*quantity_on_hand,0)
, vendor_name
FROM
items
LEFT JOIN vendors ON items.primary_vendor_id=vendors.vendor_id
;
