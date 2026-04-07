-- PHẦM 1 BÀI 1:
-- 1.1 TRUNG BÌNH
select 
avg(dongia) as GiaTrungBinh
from "AI21302".products;
-- 1.2 NHỎ NHẤT
select 
min(dongia) as GiaReNhat
from "AI21302".products;
-- 1.3 LỚN NHẤT
select 
max(dongia) as GiaDatNhat
from "AI21302".products;
-- 1.4 TỔNG
select 
count(*) as SoLuongSanPham
from "AI21302".products;

-- Bài 2:
select
s.supplier_name,
count(p.masp) as total_products
from "AI21302".suppliers s
join "AI21302".products p on s.supplier_id = p.supplier_id
group by s.supplier_name
having (p.masp) > 1;

-- Phần 2 Bài 3:
SELECT 
madonhang,
to_char(ngayhd, 'DD/MM/YYYY') as formatted_order_date
from "AI21302".order
where
extract(year from ngayhd) = 2025
and extract(month from ngayhd) = 10;

-- Bài 4
select
c.tenkh as customer_ten,
sum(od.soluong * od.dongia) as total_spent
from "AI21302".customers c
join "AI21302".order o on c.makh = o.makh
join "AI21302".order_details od on o.madonhang = od.madonhang
group by c.tenkh
having sum(od.soluong * od.dongia) > 100000
order by total_spent desc;






