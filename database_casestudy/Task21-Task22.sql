use database_casestudy;
 /*Task 21.	Tạo khung nhìn có tên là V_NHANVIEN để lấy được thông tin của tất cả các nhân viên 
 có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho 1 hoặc nhiều Khách hàng bất kỳ  
 với ngày lập hợp đồng là “12/12/2019”*/
 
 create view v_nhan_vien as (select nv.* from nhan_vien nv
 join hop_dong hd on nv.id_nhan_vien = hd.id_nhan_vien
where nv.dia_chi = "Hai Chau" and hd.ngay_lam_hop_dong = "2019/12/12");
select * from v_nhan_vien;

/*Task 22.	Thông qua khung nhìn V_NHANVIEN thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các Nhân viên 
được nhìn thấy bởi khung nhìn này.*/

update v_nhan_vien
set v_nhan_vien.dia_chi = "Lien Chieu"
where v_nhan_vien.id_nhan_vien = 4;
select * from nhan_vien;

