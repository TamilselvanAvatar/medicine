create database if not exists pharma ;

use pharma ;

create table if not exists medicine(
    id int ,
    name varchar(10),
    man_date date,
    exp_date date,
    uses varchar(10),
    Primary Key(id)
);

insert into medicine value(1,"Crocin","2009-02-01","2010-01-09","headache" );
insert into medicine value(2,"Aspirin","2019-02-01","2020-11-04","fever" );
insert into medicine value(3,"Anacin","2007-11-01","2010-10-07","headache" );
insert into medicine value(4,"Vicks","2017-11-01","2019-11-11","fever" );
