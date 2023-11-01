CREATE TABLE category(
    pk_category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100),
    description VARCHAR(400)
);

-- insert data into table

INSERT INTO category VALUES(
    1,
    'GROCERY',
    'DAILY NEEDS'
);
INSERT INTO category VALUES(
    2,
'STATIONERY',
'BOOKS, PENS, SCHOOL ITEMS'
);


INSERT INTO category VALUES(
    3,
'FANCY',
'BEAUTY ITEMS'
);


storedb=# select * from category;
 pk_category_id | category_name |        description
----------------+---------------+---------------------------
              1 | GROCERY       | DAILY NEEDS
              2 | STATIONERY    | BOOKS, PENS, SCHOOL ITEMS
              3 | FANCY         | BEAUTY ITEMS
(3 rows)


CREATE TABLE products(
    pk_products_id SERIAL PRIMARY KEY,
    product_name VARCHAR(200),
    fk_category_id INT,
    description VARCHAR(400),
    price FLOAT,
    added_date DATE,
    FOREIGN KEY(fk_category_id) REFERENCES category(pk_category_id) ON DELETE CASCADE ON UPDATE CASCADE

);


INSERT INTO products VALUES(
    1,
    'CLASSMATE NOTEBOOK',
    2,
    'LINED NOTEBOOK',
    30,
    '27-10-2023'
);

INSERT INTO products VALUES(
    2,
    'MAYBEILINE EYELINER',
    3,
    'BLACK COLOR',
    70,
    '27-10-2023'
);

INSERT INTO products VALUES(
    3,
    'MAGGI NOODLES',
    1,
    'CHICKEN FLAVOURED',
    50,
    '27-10-2023'
);

INSERT INTO products VALUES(
    4,
    'YEEPY NOODLES',
    1,
    'VEG FLAVOURED',
    40,
    '26-10-2023'
);

INSERT INTO products VALUES(
    5,
    'PILOT PEN',
    2,
    'BLACK COLOUR',
    60,
    '28-10-2023'
);

INSERT INTO products VALUES(
    6,
    'APSARA PENCIL',
    2,
    'HB',
    5,
    '29-10-2023'
);

INSERT INTO products VALUES(
    7,
    'DILO PENCIL',
    2,
    '2B',
    6,
    '27-10-2023'
),
(
    8,
    'CAMEL PEN',
    2,
    'BLUE COLOUR',
    10,
    '30-10-2023'
);

-- to display products that are added on

SELECT * FROM products WHERE added_date = '27-10-2023';
SELECT * FROM products WHERE price < 60;
SELECT product_name, price FROM products;

-- select command with number of records to return

SELECT * FROM products LIMIT 5;

-- like operator

SELECT * FROM employees WHERE first_name LIKE 'L%';
SELECT * FROM products WHERE product_name LIKE 'M%';
SELECT * FROM products WHERE product_name LIKE '%NOODLES%';
SELECT * FROM products WHERE description LIKE '%COLOUR%';
SELECT * FROM products WHERE description LIKE '_L%';
SELECT * FROM products WHERE description LIKE '__A%';
SELECT * FROM products WHERE product_name LIKE '_A%';
SELECT * FROM products WHERE product_name LIKE '_A%' LIMIT 2;
SELECT * FROM employees WHERE phone LIKE '99________';









CREATE TABLE employees(
    pk_emp_id SERIAL PRIMARY KEY,
    type VARCHAR(100),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200),
    phone VARCHAR(100),
    gender VARCHAR(20),
    dob DATE
);



INSERT INTO employees VALUES(
    1,
    'MANAGER',
    'JANE',
    'AUSTEN',
    'janausten@gmail.com',
    '9965473569',
    'FEMALE',
    '1775-12-16'
);

INSERT INTO employees VALUES(
    2,
    'ASSISTENT MANAGER',
    'MUTHUVEL',
    'PANDIAN',
    'muthuvelpandiyan@gmail.com',
    '9998473679',
    'MALE',
    '1765-12-16'
);

INSERT INTO employees VALUES(
    3,
    'ASSISTENT MANAGER',
    'LEO',
    'DAS',
    'prathipan@gmail.com',
    '9245373679',
    'MALE',
    '1795-12-16'
);

INSERT INTO employees VALUES(
    4,
    'CO-MANAGER',
    'HARNOLD',
    'DAS',
    'harnolddas@gmail.com',
    '9246663679',
    'MALE',
    '1775-12-16'
),
(
    5,
    'CO-MANAGER',
    'ANTONY',
    'DAS',
    'antonydas@gmail.com',
    '9245373666',
    'MALE',
    '1755-12-16'
),
(
    6,
    'DISTRIBUTION MANAGER',
    'VARMAN',
    '',
    'varman@gmail.com',
    '9666373679',
    'MALE',
    '1785-12-16'
);


SELECT * FROM employees WHERE last_name LIKE '%DAS%';

storedb=# select * from employees;
 pk_emp_id |       type        | first_name | last_name |           email            |   phone    | gender |    dob     -----------+-------------------+------------+-----------+----------------------------+------------+--------+------------         1 | MANAGER           | JANE       | AUSTEN    | janausten@gmail.com        | 9965473569 | FEMALE | 1775-12-16
         2 | ASSISTENT MANAGER | MUTHUVEL   | PANDIAN   | muthuvelpandiyan@gmail.com | 9998473679 | MALE   | 1765-12-16
(2 rows)

CREATE TABLE bills(
    pk_bills_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(50),
    bill_date DATE
);

INSERT INTO bills VALUES(
    1,
    'ATHIRA',
    '9856743098',
    '30-10-2023'

);

INSERT INTO bills VALUES(
    2,
    'ARUN',
    '9856343548',
    '31-10-2023'

);

INSERT INTO bills VALUES(
    3,
    'GAYATHRI',
    '9857895548',
    '01-11-2023'

);

-- WHERE CONDITIONS

SELECT * FROM employees WHERE gender = 'MALE';
SELECT * FROM products WHERE added_date = '27-10-2023';
SELECT * FROM products WHERE price < 60;
SELECT product_name, price FROM products;
SELECT * FROM products WHERE price BETWEEN 40 AND 100;

-- UPDATE command

UPDATE employees SET email = 'leodas@gmail.com' WHERE first_name = 'LEO' AND last_name = 'DAS';

UPDATE employees SET last_name = 'VARMA' WHERE first_name = 'VARMAN';

UPDATE employees SET last_name = 'AUSTIN' WHERE first_name = 'JANE';

-- DELETE command

DELETE FROM employees WHERE first_name = 'LEO' AND last_name = 'DAS';

