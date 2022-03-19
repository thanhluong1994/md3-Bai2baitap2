create database quanlybanhang;
use quanlybanhang;

create table Customer(
                         cID int auto_increment primary key ,
                         cName varchar(50),
                         cAge int
);

create table Oder(
                     oID int auto_increment primary key ,
                     cID int,
                     oDate date,
                     oTotalPrice double,
                     foreign key (cID) references customer(cID)
);

create table Product(
                        pID int auto_increment primary key ,
                        pName varchar(50),
                        pPrice int
);

create table OrderDetail(
                            oID int,
                            pID int auto_increment,
                            odQTY int,
                            primary key (oID,pID),
                            foreign key(oID)references oder(oID),
                            foreign key (pID)references product(pID)
);
insert into Customer values (2,'luong',29);
insert into oder values (1,1,'2022/3/19',200000);
insert into product values (1,'tu lanh',300000);
insert into orderdetail values (1,1,2);

select *from orderdetail;
select *from product;
select *from oder;
select *from customer;

