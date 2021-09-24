create database database_casestudy;
use database_casestudy;

create table vitri (
id_vi_tri int auto_increment primary key,
ten_vi_tri varchar(45)
);

create table trinhdo (
id_trinh_do int auto_increment primary key,
trinh_do varchar(45)
);


create table bophan (
id_bo_phan int auto_increment primary key,
ten_bo_phan varchar(45)
);

create table nhanvien (
id_nhan_vien int auto_increment primary key,
ho_ten varchar(45),
id_vi_tri int, foreign key(id_vi_tri) references vitri(id_vi_tri),
id_trinh_do int, foreign key(id_trinh_do) references trinhdo(id_trinh_do),
id_bo_phan int, foreign key(id_bo_phan) references bophan(id_bo_phan),
ngay_sinh date,
so_cmnd varchar(45),
email varchar(45),
dia_chi varchar(45)
);

create table loaikhach (
id_loai_khach int auto_increment primary key,
ten_loai_khach varchar(45)
);

create table khachhang (
id_khach_hang int auto_increment primary key,
id_loai_khach int, foreign key(id_loai_khach) references loaikhach(id_loai_khach),
ho_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
email varchar(45),
dia_chi varchar(45)
);

create table kieuthue (
id_kieu_thue int auto_increment primary key,
ten_kieu_thue varchar(45),
gia int
);

create table loaidichvu (
id_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu varchar(45)
);

create table dichvu (
id_dich_vu int auto_increment primary key,
ten_dich_vu varchar(45),
dien_tich int,
so_tang int,
so_nguoi_toi_da varchar(45),
chi_phi_thue varchar(45),
id_kieu_thue int, foreign key(id_kieu_thue) references kieuthue(id_kieu_thue),
id_loai_dich_vu int, foreign key(id_loai_dich_vu) references loaidichvu(id_loai_dich_vu),
trang_thai varchar(45)
);

create table dichvudikem (
id_dich_vu_di_kem int auto_increment primary key,
ten_dich_vu_di_kem varchar(45),
gia int,
don_vi int,
trang_thai_kha_dung varchar(45)
);


create table hopdong (
id_hop_dong int auto_increment primary key,
id_nhan_vien int, foreign key(id_nhan_vien) references nhanvien(id_nhan_vien),
id_khach_hang int, foreign key(id_khach_hang) references khachhang(id_khach_hang),
id_dich_vu int, foreign key(id_dich_vu) references dichvu(id_dich_vu),
ngay_lam_hop_dong date,
ngay_ket_thuc date,
tien_dat_coc int, 
tong_tien int
);

create table hopdongchitiet (
id_hop_dong_chi_tiet int auto_increment primary key,
id_hop_dong int, foreign key(id_hop_dong) references hopdong(id_hop_dong),
id_dich_vu_di_kem int, foreign key(id_dich_vu_di_kem) references dichvudikem(id_dich_vu_di_kem),
so_luong int
);



