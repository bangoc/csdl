select pname from SupplyProductDB.Product;

select distinct pname from SupplyProductDB.Product;

select * from SupplyProductDB.Supplier;

select sid, pid, quantity * 10 from SupplyProductDB.SupplyProduct;

select sname from SupplyProductDB.Supplier
where city = "London";

select sid, sname from SupplyProductDB.Supplier
where city = "London" AND size > 75;

select * from SupplyProductDB.Supplier
where size between 100 AND 150;

select sid from SupplyProductDB.SupplyProduct
where pid = 'P1' OR pid = 'P2';

select sid from SupplyProductDB.SupplyProduct
where pid IN ('P1', 'P2');

select * from SupplyProductDB.Supplier
where city LIKE 'New%';

select sname
from SupplyProductDB.Supplier S, SupplyProductDB.SupplyProduct SP
where S.SID = SP.SID and SP.PID = "P1";

select sname, S.sid
from SupplyProductDB.Supplier S, SupplyProductDB.SupplyProduct SP, SupplyProductDB.Product P
where S.SID = SP.SID and P.PID = SP.PID AND P.COLOR = 'red';

select sid
from SupplyProductDB.SupplyProduct AS SP
where pid = 'P1' AND sid in (select sid from SupplyProductDB.SupplyProduct where pid = "P2");

select * from SupplyProductDB.Supplier
where size >= ALL(select size from SupplyProductDB.Supplier);

select sid from SupplyProductDB.SupplyProduct
where sid != 'S2' AND
      quantity = ANY(select quantity from SupplyProductDB.SupplyProduct as SP2 where SP2.sid='S2');

      