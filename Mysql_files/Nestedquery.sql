use customer 
show tables

select * from cust

Q-1 ---> Find the list of customers having greater than total charges greater than average total charges

select avg(TotalCharges) from cust

select count(*) from cust where TotalCharges where totalCharges > 2283.30 --> 2644

select count(*) from cust where TotalCharges > (select avg(TotalCharges) from cust)

select * from cust where TotalCharges > (select avg(TotalCharges) from cust)

select customerID, gender, tenure from cust where TotalCharges > (select avg(TotalCharges) from cust)


Q-2--> Find the list of customers who has a greater TotalCharges than customerID: 9237-HQITU
select count(*) from cust where TotalCharges > (select TotalCharges from cust where customerID= '7892-POOKP')
 


