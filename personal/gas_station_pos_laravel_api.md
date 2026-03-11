# Gas Station POS Laravel API
## Building a pos api in laravel with notepad
#### Items (Items in system, no inventory, this includes gas prices as items):
id
name
description
price
category_id (many)

#### Category:
id
name
description

#### Sale:
id
sale_item_id (many)
sub_total
tax_total
total
payment_id

#### Sale Item:
id
sale_id
item_id
quantity
sale_price

#### Payment:
id
sale_id
method
amount
details (can be bank name or something, for project purpose no card info or anything)

