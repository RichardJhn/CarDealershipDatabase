use cardealership;

select d.name
from dealership d
join inventory i on i.dealershipid = d.dealershipid
where i.vin = 1001