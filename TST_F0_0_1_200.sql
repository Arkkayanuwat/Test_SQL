/* Test casr number : TST_F0_0_1_200 11111111*/

/*-------------------------------------------- automotive Level 1 --------------------------------------------*/
SELECT COUNT(party_id)AS automotive
FROM allfilters.all_filters 
WHERE (
[automotive-budget_car] = 1 OR [automotive-auto_repair] = 1 OR [automotive-off-road_vehicles] = 1 OR [automotive-automotive_-_others] = 1 OR [automotive-motorcycles] = 1 OR [automotive-luxury_cars] = 1
) and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1)
GROUP BY [automotive-auto_repair],[automotive-budget_car], [automotive-off-road_vehicles], [automotive-motorcycles],[automotive-automotive_-_others],[automotive-luxury_cars]
HAVING [automotive-budget_car] = 1 OR [automotive-auto_repair] = 1 OR [automotive-off-road_vehicles] = 1 OR [automotive-automotive_-_others] = 1 OR [automotive-motorcycles] = 1 OR [automotive-luxury_cars] = 1

/*-------------------------------------------- automotive Level 2 --------------------------------------------*/
SELECT 
(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-auto_repair] = 1 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS auto_repair,


(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-budget_car]= 1  
 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS budget_car,

(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-luxury_cars] = 1 
 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS luxury_cars,

(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-motorcycles] = 1 
 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS motorcycles,

(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-off-road_vehicles] = 1
 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS off_road_vehicles,


(SELECT COUNT([party_id])
FROM allfilters.all_filters
WHERE ([automotive-automotive_-_others] = 1 
 )and 
(loan_indicator = 1 OR 
investment_indicator = 1 OR 
remittance_indicator = 1 OR 
credit_card_indicator = 1 OR 
insurance_indicator = 1 OR 
home_indicator = 1 OR 
car_indicator = 1)and 
(getting_married_indicator = 1 OR going_college_indicator = 1 OR job_search_indicator=1) and
(modern_trading_indicator = 1 OR 
blockchain_traders_indicator = 1 OR 
foreign_bank_epayment_users_indicator = 1 OR 
local_bank_epayment_users_indicator = 1 OR 
app_epayment_users_indicator = 1 OR 
bank_epayment_users_indicator = 1))AS Automotive_Others