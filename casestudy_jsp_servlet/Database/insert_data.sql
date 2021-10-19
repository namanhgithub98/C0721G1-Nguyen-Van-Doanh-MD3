use casestudy_jsp_and_servlet;

insert into position
values
(1,'lễ tân'),
(2,'phục vụ'),
(3,'chuyên viên'),
(4,'giám sát'),
(5,'quản lí'),
(6,'giám đốc');

insert into education_degree
values
(1,'trung cấp'),
(2,'cao đẳng'),
(3,'đại học'),
(4,'sau đại học');

insert into division
values
(1,'Sale – Marketing'),
(2,'Hành Chính'),
(3,'Phục vụ'),
(4,'Quản lý');

insert into `role`
value
(1,'lễ tân'),
(2,'phục vụ'),
(3,'chuyên viên'),
(4,'giám sát'),
(5,'quản lí'),
(6,'giám đốc');

insert into user
value
('Lê Ngọc Anh','12345678'),
('Nguyễn Văn Ánh','12345678'),
('Nguyễn Văn Tuấn','12345678'),
('Lê Thị Thu Hằng','12345678'),
('Trương Văn Vĩnh','12345678'),
('Trần Khánh Như','12345678'),
('Nguyễn Ngọc Sơn','12345678'),
('Trịnh Tuấn Tú','12345678'),
('Vũ Hồng Ngọc','12345678'),
('Lê Như Ngọc','12345678');


insert into user_role
value
(6,'Lê Ngọc Anh'),
(1,'Nguyễn Văn Ánh'),
(1,'Nguyễn Văn Tuấn'),
(2,'Lê Thị Thu Hằng'),
(2,'Trương Văn Vĩnh'),
(3,'Trần Khánh Như'),
(3,'Nguyễn Ngọc Sơn'),
(4,'Trịnh Tuấn Tú'),
(6,'Vũ Hồng Ngọc'),
(5,'Lê Như Ngọc');

insert into employee
values
(1,'Lê Ngọc Anh','1978-02-12',206184291,50000000,0905345432,'anh@gmail.com','Đà Nẵng',6,4,2,'Lê Ngọc Anh'),
(2,'Nguyễn Văn Ánh','1999-12-12',206764234,5000000,090534345,'nguyenanh@gmail.com','Đà Nẵng',1,1,1,'Nguyễn Văn Ánh'),
(3,'Nguyễn Văn Tuấn','1988-04-13',206184292,5000000,0905768796,'vantuan@gmail.com','Quảng Nam',1,1,3,'Nguyễn Văn Tuấn'),
(4,'Lê Thị Thu Hằng','1995-02-12',206184295,10000000,0905453657,'lethuhang@gmail.com','Đà Nẵng',2,3,4,'Lê Thị Thu Hằng'),
(5,'Trương Văn Vĩnh','1989-02-09',206915647,10000000,0909452456,'vanvinh@gmail.com','Hồ Chí Minh',2,3,1,'Trương Văn Vĩnh'),
(6,'Trần Khánh Như','1991-12-17',202914563,20000000,0905567345,'trankhanhnhu@gmail.com','Hà Nội',3,3,2,'Trần Khánh Như'),
(7,'Nguyễn Ngọc Sơn','1988-02-12',206566914,20000000,09055467846,'nguyenngocson@gmail.com','Hai Phòng',3,3,1,'Nguyễn Ngọc Sơn'),
(8,'Trịnh Tuấn Tú','1978-02-12',206184296,50000000,0905345432,'tuantu@gmail.com','Đà Nẵng',4,4,4,'Trịnh Tuấn Tú'),
(9,'Vũ Hồng Ngọc','1978-02-18',20657478,30000000,0935678567,'hongngoc@gmail.com','Đà Nẵng',6,4,2,'Vũ Hồng Ngọc'),
(10,'Lê Như Ngọc','1990-02-12',20656465,40000000,0905345768,'nhungoc@gmail.com','Quảng Nam',5,4,1,'Lê Như Ngọc');


insert into customer_type
values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');	


insert into customer
values
(1,'KH-1001','Nguyễn Văn Đoàn','1989-02-09','nam','234345345','090543454','nguyendoan@gmail.com','Hai Phong',2),
(2,'KH-1002','Nguyễn Văn Anh','1991-12-17','nam','223445398','095643457','nguyenanh@gmail.com','Quảng Bình',3),
(3,'KH-1003','Lê Văn Hùng','1990-02-12','nam','342345456','0906456756','hung@gmail.com','Hai Dương',1),
(4,'KH-1004','Đoàn Ngọc Lĩnh','1978-02-12','nam','234345665','0935678767','doanlinhgmail.com','Đà Nẵng',4),
(5,'KH-1005','Tô Văn Lâm','1995-02-12','nam','323454345','090542546','tolam@gmail.com','Hà Nội',5);


insert into service_type
values
(1,'Villa'),
(2,'House'),
(3,'Room');


insert into rent_type
values
(1,'năm',90000000),
(2,'tháng',1200000),
(3,'ngày',2000000),
(4,'giờ',200000);

insert into service
values
(1,'DV-3001','thuê view biển villa',200,5000000,5,'phòng cỡ lớn','tốt nhất',50,1,1,3),
(2,'DV-3002','thuê view biển house',100,4000000,5,'phòng cỡ vừa','tốt nhất',50,2,2,3),
(3,'DV-3003','thuê view biển room',30,3000000,2,'phòng cỡ lớn','tốt nhất',null,1,3,3),
(4,'DV-3005','thuê view trung tâm villa',200,4000000,6,'phòng cỡ lớn','tốt nhất',50,1,1,3),
(5,'DV-3006','thuê view trung tâm house',100,3000000,4,'phòng cỡ lớn','tốt nhất',50,1,2,3),
(6,'DV-3007','thuê view trung tâm room',30,2000000,2,'phòng cỡ nhỏ','tốt nhất',null,1,3,3);

insert into contract
values
(1,'2020-12-12','2021-01-02',3000000,5000000,2,1,1),
(2,'2021-01-12','2021-01-20',400000,7000000,3,4,2),
(3,'2020-03-12','2021-03-22',5000000,10000000,6,3,4);


insert into attach_service
values
(1,'massage',500000,1,'hoàn thành'),
(2,'karaoke',400000,1,'một giờ'),
(3,'thức ăn',100000,1,'một khẩu phần'),
(4,'nước uống',20000,1,'chai'),
(5,'thuê xe di chuyển tham quan resort',1000000,1,'tour');


insert into contract_detail
values
(1,1,2,3),
(2,2,1,2),
(3,3,4,2);