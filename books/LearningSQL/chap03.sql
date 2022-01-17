# 파생 테이블
SELECT concat(cust.last_name, ', ', cust.first_name) full_name
FROM
    (SELECT first_name, last_name, email
     FROM customer
     WHERE first_name = 'JESSIE'
    ) cust;

# 임시 테이블
CREATE TEMPORARY TABLE actors_j(
    actor_id smallint(5),
    first_name varchar(45),
    last_name varchar(45)
    );

INSERT INTO actors_j
    SELECT actor_id, first_name, last_name
    FROM actor
    WHERE last_name LIKE 'J%';

SELECT * FROM actors_j;

# 가상 테이블(뷰)
CREATE VIEW cust_vw AS
    SELECT customer_id, first_name, last_name, active
    FROM customer;

SELECT first_name, last_name
    FROM cust_vw
    WHERE active = 0;

