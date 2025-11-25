use cardealership;

select *
from sales_contracts sc
join  inventory i on i.vin = sc.vin
join dealership d on d.dealershipid = i.dealershipid
where d.dealershipid  = 1