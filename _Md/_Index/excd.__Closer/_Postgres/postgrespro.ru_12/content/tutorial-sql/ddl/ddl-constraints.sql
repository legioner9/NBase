-- { check constraints from  create}
CREATE TABLE products
(
    product_no integer,
    name       text,
    price      numeric CHECK (price > 0)
);
-- if add (23, vdf, -3) trow error === новая строка в отношении "products"
-- нарушает ограничение-проверку "products_price_check"

-- { check with more than single fields }
CREATE TABLE products
(
    product_no       integer,
    name             text,
    price            numeric CHECK (price > 0),
    discounted_price numeric CHECK (discounted_price > 0),
    CHECK (price > discounted_price)
);
-- (3, ervw, 20, 30) trow error === новая строка в отношении "products"
-- нарушает ограничение-проверку "products_check"

-- { named constraint check }
CREATE TABLE products
(
    product_no integer,
    name       text,
    price      numeric
        CONSTRAINT positive_price CHECK (price > 0)
);

-- constraint NOT NULL
create table products
(
    prod_id    integer
        constraint products_prod_id_pk
            primary key,
    name       text
        constraint diff_name_unique unique,
    price      numeric not null,
    disc_price numeric
        CONSTRAINT disc_check
            check ( price > disc_price )
);

-- multiple unique
create table products_2
(
    a int,
    b int,
    c int,
    unique (a, c)
);

-- multiple primary key
create table products_2
(
    a int,
    b int,
    c int,
    primary key (a, c)
);

-- foreign key

alter table schema_one.orders
    add constraint orders_salespeople_snum_fk
        foreign key (snum) references schema_one.salespeople (snum);

-- bind
/*
CREATE TABLE t1 (
    a integer PRIMARY KEY,
    b integer,
    c integer,
    FOREIGN KEY (b, c) REFERENCES other_table (c1, c2)
    );
*/

-- bind with REFERENCES
/*
CREATE TABLE products (
    product_no integer PRIMARY KEY,
    name text,
    price numeric
);

CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    shipping_address text,
    ...
);

CREATE TABLE order_items (
    product_no integer REFERENCES products, -- if the names of column match
    order_id integer REFERENCES orders,
    quantity integer,
    PRIMARY KEY (product_no, order_id)
);
*/

-- bind many to many
/*
CREATE TABLE products (
    product_no integer PRIMARY KEY,
    name text,
    price numeric
);

CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    shipping_address text,
    ...
);

CREATE TABLE order_items (
    product_no integer REFERENCES products,
    order_id integer REFERENCES orders,
    quantity integer,
    PRIMARY KEY (product_no, order_id)
);
*/

/*
CREATE TABLE order_items (
    product_no integer REFERENCES products
        ON DELETE RESTRICT, -- RESTRICT предотвращает удаление связанной строки
    order_id integer REFERENCES orders
        ON DELETE CASCADE, -- CASCADE в данном случае означает,
                            что изменённые значения связанных столбцов будут скопированы в зависимые строки
    quantity integer,
    PRIMARY KEY (product_no, order_id)
);
*/