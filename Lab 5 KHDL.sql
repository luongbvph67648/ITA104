-- Phần 1 Bài 1:
-- 1.1 INNER JOIN
select 
od.madonhang,
od.soluong,
p.tensp,
p.dongia
from "AI21302".order_details od
inner join "AI21302".products p
on od.masp = p.masp;

-- 1.2 LEFT JOIN
select
c.tenkh,
o.madonhang
from "AI21302".customers c
left join "AI21302".order o
on c.makh = o.makh;

-- Baì 2 
-- 2.1 RIGHT JOIN
select
p.tensp,
od.madonhang
from "AI21302".products p
right join "AI21302".order_details od
on p.masp = od.masp;

-- 2.2 UNION
select tenkh as "Tên liên hệ" , sdt as "Số liên hệ"
from "AI21302".customers
union
select supplier_name as "Tên nhà cung cấp" , contact_phone as "Số liên hệ"
from "AI21302".suppliers;

-- Phần 2 Bài 3:
-- 3.1 Subquery IN
select tensp , dongia
from "AI21302".products
where supplier_id in (
select supplier_id
from "AI21302".suppliers
where supplier_name = 'Công ty Sữa Việt Nam'
);

-- 3.2 Subquery Select
select 
tensp,
dongia,
(select avg(dongia) from "AI21302".products) as "Giá trung bình"
from "AI21302".products;

-- Bài 4:
-- Subquery From
select madonhang, total_value
from (
select madonhang, sum(soluong * dongia) as total_value
from "AI21302".order_details
group by madonhang
) as order_totals
where total_value > 50000;

-- EXISTS
select supplier_name
from "AI21302".suppliers s
where exists (
select 1
from "AI21302".products p
where p.supplier_id = s.supplier_id
);



-- =======================================================================================
select * 
from "AI21302".customers;

select * 
from "AI21302".order;

select * 
from "AI21302".order_details;

select * 
from "AI21302".products;

select * 
from "AI21302".suppliers;