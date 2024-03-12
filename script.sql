CREATE TABLE account(
        id   int primary key,
        name     varchar (100),
        lastname varchar (50),
        birthdate Date,
        balance  Float,
        bank_type varchar (50)
);
 CREATE TABLE balance(
        id int primary key,
        balance float ,
        date_reference date,
        loans float,
        interset_loans float
 );
CREATE TABLE transaction(
        id int primary key,
        label varchar (100),
        date_effect date,
        date_registration date,
        status varchar (50),
        bank_type varchar (50)
);
CREATE TABLE account_statement(
        id_account int references account(id),
        id int primary key,
        date date,
        pattern varchar (100),
        credit float,
        flow float,
        balance float
);