SELECT *
FROM consumer_complaints;

SELECT product_name, state_name
FROM consumer_complaints
WHERE state_name = 'NY';

SELECT product_name, state_name
FROM consumer_complaints
WHERE state_name = 'NY' OR state_name = 'CA';

SELECT product_name
FROM consumer_complaints
WHERE LOWER(product_name) LIKE '%credit%';

SELECT issue
FROM consumer_complaints
WHERE LOWER(issue) LIKE '%late%';

SELECT COUNT(product_name)
FROM consumer_complaints
WHERE date_received = date_sent;



