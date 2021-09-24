create database quanlydiemthi;
use quanlydiemthi;

create table hocsinh (
ma_hoc_sinh int auto_increment primary key,
ten_hoc_sinh varchar(255),
ngay_sinh date,
lop varchar(45),
gioi_tinh varchar(45)
);


create table giaovien (
ma_giao_vien int auto_increment primary key,
ten_giao_vien varchar(255),
so_dien_thoai int
);

create table monhoc (
ma_mon_hoc int auto_increment primary key,
ten_mon_hoc varchar(255),
ma_giao_vien int, foreign key(ma_giao_vien) references giaovien(ma_giao_vien)
);

create table bangdiem(
ma_hoc_sinh int, foreign key(ma_hoc_sinh) references hocsinh(ma_hoc_sinh),
ma_mon_hoc int, foreign key(ma_mon_hoc) references monhoc(ma_mon_hoc),
diem_thi int,
ngay_kiem_tra date
);