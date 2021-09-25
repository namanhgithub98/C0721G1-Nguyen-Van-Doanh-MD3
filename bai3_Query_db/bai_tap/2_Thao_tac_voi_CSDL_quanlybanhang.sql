use quanlybanhang;

-- Thêm dữ liệu
insert into customer
values
(1,"Minh Quan",10),
(2,"Ngoc Oanh",20),
(3,"Hong Ha",50);

insert into order1 (id_order1,id_customer,date_order1)
values
(1,1,"2006-03-21"),
(2,2,"2006-03-23"),
(3,1,"2006-03-16");

insert into product
values
(1, "May Giat",3),
(2, "Tu lanh",5),
(3, "Dieu Hoa",7),
(4, "Quat",1),
(5, "Bep Dien",2);

insert into order_detail
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

-- Truy vấn dữ liệu
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select order1.id_order1, order1.date_order1, product.price_product
from order1
join order_detail on order1.id_order1 = order_detail.id_order1
join product on order_detail.id_product = product.id_product;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.name_customer,product.name_product,product.price_product
from customer
join order1 on customer.id_customer=order1.id_customer
join order_detail on order1.id_order1=order_detail.id_order1
join product on order_detail.id_product= product.id_product;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.name_customer
from customer
left join order1 on customer.id_customer=order1.id_customer
where order1.id_order1 is null;
/* Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
(giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
 Giá bán của từng loại được tính = odQTY*pPrice)*/
 select order1.id_order1, order1.date_order1,sum(order_detail.qty_order_detail*product.price_product) as price
 from order1
 join order_detail on order1.id_order1=order_detail.id_order1
 join product on order_detail.id_product=product.id_product
 group by order1.id_order1;