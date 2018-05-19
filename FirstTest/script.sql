CREATE Table product(
product_id varchar ,
product_name varchar  not null,
product_desc varchar ,
product_status varchar,
created_date date,
created_by varchar,
modified_date date,
modified_by varchar,
CONSTRAINT prod_pk_key PRIMARY KEY(product_id)
);

