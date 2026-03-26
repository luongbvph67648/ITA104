-- PHẦN 1 BÀI 1:

-- Tạo bảng Khách hàng
create table "AI21302".Customers(
MaKH int primary key,
TenKH varchar,
SDT varchar,
DiaChiKH varchar
);

-- Tạo bảng Sản phẩm
create table "AI21302".Products(
MaSP int primary key,
TenSP varchar,
DonGia decimal (10,2)
);

-- Tạo bảng ChiTietSanPham
create table "AI21302".order_details(
MaDonHang int,
MaSP int
SoLuong int,
DonGia decimal(10,2)
);

-- Tạo Bảng Đơn Hàng
create table "AI21302".order(
MaDonHang int,
MaKH int,
NgayHD date
);

-- Tạo khoá ngoại bảng Đơn Hàng
alter table "AI21302".order
add constraint FK_order_customers
foreign key (MaKH)
references "AI21302".customers (MaKH)
on update cascade
on delete set null;

-- Tạo khoá phức hợp cho bảng orderdetails 
alter table "AI21302".orderDetails
add constraint PK_orderdetails 
primary key (MaDonHang,MaSP),
add constraint FK_orderdetails_order foreign key (MaDonHang) references "AI21302".order (MaDonHang),
add constraint FK_orderdetails_products foreign key (MaSP) references "AI21302".products (MaSP);

-- Thêm thuộc tính vào bảng ChiTietSanPham
insert into "AI21302".order_details
(MaDonHang,MaSP,SoLuong,DonGia)
values 
(101,1,2,195000),
(101,4,1,32000),
(101,9,3,12000),
(102,5,1,365000),
(102,20,2,26000),
(103,7,1,165000),
(103,10,2,185000),
(104,11,2,55000),
(104,13,1,48000),
(104,15,1,28000),
(105,2,2,52000),
(105,3,1,45000),
(106,12,1,445000),
(106,18,2,72000),
(107,14,1,175000),
(107,16,2,35000),
(107,17,1,145000),
(108,6,1,115000),
(108,8,2,85000),
(108,9,5,12000),
(109,19,3,18000),
(109,1,1,195000),
(110,4,2,32000),
(110,20,4,26000),
(111,5,1,365000),
(111,11,3,55000),
(112,7,2,165000),
(112,2,1,52000),
(113,10,1,185000),
(113,12,1,445000);

-- Thêm thuộc tính vào bảng Hoá Đơn
insert into "AI21302".order
(MaDonHang,MaKH,NgayHD)
values
(101,1,'2024-03-01'),
(102,2,'2024-03-01'),
(103,3,'2024-03-02'),
(104,4,'2024-03-02'),
(105,5,'2024-03-03'),
(106,6,'2024-03-03'),
(107,7,'2024-03-04'),
(108,8,'2024-03-05'),
(109,9,'2024-03-05'),
(110,10,'2024-03-06'),
(111,1,'2024-03-07'),
(112,2,'2024-03-08'),
(113,3,'2024-03-09');

-- Thêm thuộc tính vào bảng Khách hàng
insert into "AI21302".customers
(makh,tenkh,sdt,diachikh)
values 
(1,'Nguyễn Minh Quang','0912345678','Nguyễn Trãi,Thanh Xuân,Hà Nội'),
(2,'Lê Thị Hồng Hạnh','0987654321','Chu Văn An, Bình Thạnh, TP.HCM'),
(3,'Trần Hoàng Nam','0905112233','Lê Duẩn, Hải Châu, Đà Nẵng'),
(4,'Phạm Thu Thảo','0944889900','Trần Hưng Đạo, Ninh Kiều, Cần Thơ'),
(5,'Đặng Quốc Bảo','0332556778','Xã Hòa Thắng, TP. Buôn Ma Thuột'),
(6,'Vũ Thị Thanh Mai','0868221443','Lương Khánh Thiện, Ngô Quyền, Hải Phòng'),
(7,'Ngô Anh Tuấn','0971009887','Chung cư Blue Sky, Phường 2, Vũng Tàu'),
(8,'Bùi Tuyết Nhi','0922778899','Trần Phú, TP. Nha Trang, Khánh Hòa'),
(9,'Lý Gia Bình','0919665544','Nguyễn Văn Cừ, TP. Vinh, Nghệ An'),
(10,'Bùi Văn Lượng','0355443322','Tokyo');


-- Thêm thuộc tính vào bảng Sản phẩm
insert into "AI21302".products
(MaSP,TenSP,DonGia)
values
(1,'Gạo thơm ST25 (Túi 5kg)',195000),
(2,'Dầu ăn Neptune Light (1L)',52000),
(3,'Nước mắm Nam Ngư (750ml)',45000),
(4,'Trứng gà ta (Hộp 10 quả)',32000),
(5,'Sữa tươi TH True Milk (Thùng 48 hộp)',365000),
(6,'Mì tôm Hảo Hảo (Thùng 30 gói)',115000),
(7,'Thịt ba rọi heo (1kg)',165000),
(8,'Ức gà phi lê (1kg)',85000),
(9,'Rau muống hạt (Bó 500g)',12000),
(10,'Táo Envy Mỹ (1kg)',185000),
(11,'Coca-Cola (Lốc 6 lon)',55000),
(12,'Bia Heineken (Thùng 24 lon)',445000),
(13,'Bánh quy Cosy Kinh Đô (Gói 400g)',48000),
(14,'Bột giặt OMO Comfort (3.6kg)',175000),
(15,'Nước rửa chén Sunlight (750g)',28.000),
(16,'Kem đánh răng P/S (180g)',35000),
(17,'Dầu gội Pantene (650ml)',145000),
(18,'Giấy vệ sinh Bless You (Lốc 10 cuộn)',72000),
(19,'Khăn giấy rút Tempo (Gói)',18000),
(20,'Sữa chua Vinamilk có đường (Lốc 4 hộp)',26000);

-- BÀI 2:
create table "AI21302".suppliers(
supplier_id int primary key,
supplier_name varchar (255) not null,
contact_phone varchar(15) unique
);

-- Phần 2 bài 3:
alter table "AI21302".suppliers
add column email varchar(100);

alter table "AI21302".products
add column supplier_id int;

alter table "AI21302".products
add constraint FK_products_suppliers
foreign key (supplier_id) references "AI21302".suppliers (supplier_id);

-- Bài 4
insert into "AI21302".suppliers
(supplier_id,supplier_name,contact_phone,email)
values
(1,'Công ty Sữa Việt Nam', '0987654321', 'contact@vinamilk.vn') ,
(2,'Công ty Thực phẩm Á Châu', '0912345678', 'contact@acecook.vn');

update "AI21302".suppliers
set contact_phone = 0911112222
where supplier_id = 2;

delete from "AI21302".products
where MaSP = 19;

-- Bài 5:
create table "AI21302".test(
teest_id int
);

-- alter table "AI21302".suppliers
-- drop column contact_phone;

drop table "AI21302".test;

-- ===================================================================================

select *
from "AI21302".customers

select*
from "AI21302".products

select* 
from "AI21302".order_details

select*
from "AI21302".order

select*
from "AI21302".suppliers
-- ===================================================================================
