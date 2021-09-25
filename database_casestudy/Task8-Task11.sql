use database_casestudy;
/* Task8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên*/

select khach_hang.ho_ten	
from khach_hang
group by khach_hang.ho_ten;

/* Task 9.	Thực hiện thống kê doanh thu theo tháng,
 nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.*/

select month(ngay_lam_hop_dong) as "Thang", sum(dich_vu.chi_phi_thue +hop_dong_chi_tiet.so_luong*dich_vu_di_kem.gia) as "Tong tien",
count(hop_dong.id_khach_hang) as "So khach thue dich vu"
from hop_dong
join dich_vu on hop_dong.id_dich_vu=dich_vu.id_dich_vu
join hop_dong_chi_tiet on hop_dong.id_hop_dong=hop_dong_chi_tiet.id_hop_dong
join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem=dich_vu_di_kem.id_dich_vu_di_kem
where year(ngay_lam_hop_dong)=2019
group by month(ngay_lam_hop_dong);

/* Task 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm.
 Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem (được tính dựa trên việc count các IDHopDongChiTiet).*/
 
 select hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,count(hdct.id_hop_dong_chi_tiet) as "so_luong_dich_vu_di_kem"
from hop_dong hd
join hop_dong_chi_tiet hdct on hd.id_hop_dong=hdct.id_hop_dong
group by hd.id_hop_dong;

/* Task 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng
 bởi những Khách hàng có TenLoaiKhachHang là “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.*/
 
 select dvdk.id_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai_kha_dung,lk.ten_loai_khach,kh.dia_chi
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem=hdct.id_dich_vu_di_kem
join hop_dong hd on hdct.id_hop_dong = hd.id_hop_dong
join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
where kh.id_loai_khach = 1 and (kh.dia_chi = "Quang Ngai" or kh.dia_chi = "Vinh");