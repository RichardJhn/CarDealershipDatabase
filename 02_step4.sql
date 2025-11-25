use cardealership;

select v.carmakemodel, v.carcolor, v.mileage, v.vin
from vehicles v
join inventory i on i.vin = v.vin
join dealership d on d.dealershipid = i.dealershipid
where d.dealershipid = 1