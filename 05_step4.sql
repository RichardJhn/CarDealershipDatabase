use cardealership;


select d.name
from dealership d
join inventory i on i.dealershipid = d.dealershipid
join vehicles v on v.vin = i.vin
where v.carmakemodel = 'Toyota Camry'