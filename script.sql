CREATE TABLE account (
    id_account   serial PRIMARY KEY,
    name      VARCHAR(100) not null,
    lastname  VARCHAR(50) not null,
    birthdate DATE CHECK (birthdate > (CURRENT_DATE - INTERVAL '21 years')),
    balance   FLOAT,
    account_number varchar (50),
    bank_type VARCHAR(50) not null
);
CREATE TABLE transfer_history(
        id_transfer serial primary key,
        id_send int references account(id_account),
        id_receive int references account(id_account),
        date_registration date
);
CREATE TABLE transaction(
        id_transaction serial primary key,
        label varchar (100),
        transaction_amount float,
        bank_type varchar (50),
        date_effect date,
        date_registration date,
        transaction_type varchar (50),---credit ou debit---
        id_account int references account(id_account),
        id_transfer int references transfer_history(id_transfer),
        status varchar (50),
);

CREATE TABLE transaction_history(
       last_balance float ,
       date_registration date,
       id_account int references account(id_account)   
);