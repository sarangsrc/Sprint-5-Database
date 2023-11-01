-- used to get list of database
\list

-- used to create a new database 
CREATE DATABASE storedb;

-- used to connect with database 
-- \c <db name>
\c storedb

-- to create a table 
CREATE TABLE category(
    pk_category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100),
    description VARCHAR(400)
);


-- to see the table view
storedb=# select * from category;
 pk_category_id | category_name | description
----------------+---------------+-------------
(0 rows)


-- to see the table list in the db
storedb=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner
--------+----------+-------+----------
 public | category | table | postgres


-- to see the full table structure
storedb=# \d category
                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)

    -- add a column to the table
    ALTER TABLE category ADD count float;


    storedb=#     ALTER TABLE category ADD count float;
ALTER TABLE
storedb=# select * from category;
 pk_category_id | category_name | description | count
----------------+---------------+-------------+-------

  


  storedb=# \d category
                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
 count          | double precision       |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)

  


    -- change the datatype of a column
    ALTER TABLE category ALTER COLUMN count TYPE int;




    storedb=# ALTER TABLE category ALTER COLUMN count TYPE int;
ALTER TABLE
storedb=# \d category
                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
 count          | integer                |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)



    -- rename a column

    ALTER TABLE category RENAME COLUMN category_name TO cat_name;


    storedb=# ALTER TABLE category RENAME COLUMN category_name TO cat_name;
ALTER TABLE
storedb=# select * from category;
 pk_category_id | cat_name | description | count
----------------+----------+-------------+-------
(0 rows)


-- drop a column

ALTER TABLE category DROP COLUMN count;


storedb=# ALTER TABLE category DROP COLUMN count;
ALTER TABLE
storedb=# select * from category;
 pk_category_id | cat_name | description
----------------+----------+-------------
(0 rows)



-- rename a table

ALTER TABLE category RENAME TO categories;


-- Drop a Table

DROP TABLE categories;