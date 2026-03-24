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

-- Phần 1 Bài 1:
select tensp as "Tên sản phẩm", dongia as "Giá Tiền"
from "AI21302".products;

-- Bài 2:
select*
from "AI21302".customers
where tenkh like '%Văn%';

-- Phần 2 Bài 3:
select*
from "AI21302".products
order by dongia desc;

-- Bài 4:
select*
from "AI21302".products
order by dongia limit 3;



-- ===================================================================================

select *
from "AI21302".customers

select*
from "AI21302".products

-- ===================================================================================
