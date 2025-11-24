USE cardealershipdatabase;

-- 1. Get all dealerships
SELECT 
	*
FROM
	dealerships;
   
   
-- 2. Find all vehicles for a specific dealership
SELECT
	V.VIN,
    V.make,
    V.model,
    V.mileage,
    D.name,
    V.price,
    V.sold
FROM
	vehicles AS V
JOIN inventory as I ON (I.VIN = V.VIN)
JOIN dealerships AS D ON (D.dealership_id = I.dealership_ID)
WHERE D.dealership_id = 1;


-- 3. Find a car by VIN
SELECT
	make,
    model,
    mileage,
    price
FROM
	vehicles
WHERE VIN LIKE '%1%';


-- 4. Find the dealership where a certain car is located, by VIN
SELECT
	V.make,
    V.model,
    V.mileage,
    V.price
FROM
	dealerships AS D
JOIN inventory AS I ON (I.dealership_id = D.dealership_id)
JOIN vehicles AS V ON (V.VIN = I.VIN)
WHERE V.VIN = 100009;


-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT
	D.*
FROM
	dealerships AS D
JOIN inventory AS I ON (I.dealership_id = D.dealership_id)
JOIN vehicles AS V ON (V.VIN = I.VIN)
WHERE V.make = "Jeep" AND V.model = "Wrangler";


-- 6. Get all sales information for a specific dealer for a specific date range
SELECT
	*
FROM
	sales_contracts
WHERE contract_date BETWEEN '%2024-01' AND '2024-05%';