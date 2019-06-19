

use master;
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'NYCPROPERTYSALES') BEGIN DROP DATABASE NYCPROPERTYSALES END;
GO
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'NYCPROPERTYSALES') BEGIN CREATE DATABASE NYCPROPERTYSALES END;
GO
USE NYCPROPERTYSALES
GO

create table properties(
id int primary key identity(1,1),
neighbourhood int null,
building_class_category int null,
tax_class_present int null,
[block] int null,
lot int null,
building_class_present int null,
[address] varchar(50) null,
apartment_number varchar(50) null,
zip_code int null,
residential_units int null,
commertial_units int null,
total_units int null,
land_square_feet int null,
gross_square_feet int null,
year_build int null,
sale_price varchar(50) null,
sale_date int null
)
GO
create table neighbourhood(
id int primary key identity(1,1),
[name] varchar(50))
GO
create table sale_date(
id int primary key identity(1,1),
sale_date_month int null,
sale_date_year int null,
sale_date_day int null,
sale_date varchar(20) null)
GO
create table building_class_category(
id int primary key identity(1,1),
[name] varchar(50))
GO
create table tax_class_present(
id int primary key identity(1,1),
tax_class_present_name varchar(50))
GO
create table building_class_present(
id int primary key identity(1,1),
building_class_present_name varchar(50) null)
GO
create table zip_code(
id int primary key identity(1,1),
[name] varchar(50) null)
GO
create table year_build(
id int primary key identity(1,1),
[name] varchar(50) null)
GO

Alter table properties
add constraint FK_neighbourhood foreign key (neighbourhood)
references neighbourhood(id);
Alter table properties
add constraint FK_building_class_category foreign key (building_class_category)
references building_class_category(id);
Alter table properties
add constraint FK_sale_date foreign key (sale_date)
references sale_date(id);
Alter table properties
add constraint FK_tax_class_present foreign key (tax_class_present)
references tax_class_present(id);
Alter table properties
add constraint FK_building_class_present foreign key (building_class_present)
references building_class_present(id);
Alter table properties
add constraint FK_year_build foreign key (year_build)
references year_build(id);
Alter table properties
add constraint FK_zip_code foreign key (zip_code)
references zip_code(id);
