use quanlysinhvien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select *
from student
where studentName like "H%";
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from class
where month(startdate) = 12;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *
from `subject`
where credit between 3 and 5;
-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
update student
set classid = 2
where studentname = "Hung";

/* Hiển thị các thông tin: StudentName, SubName, Mark. 
Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. 
nếu trùng sắp theo tên tăng dần.*/
select studentname, subname, mark
from student
inner join mark on student.studentid = mark.studentid
inner join `subject` on mark.subid = `subject`.subid
order by mark.mark desc, student.studentname asc;