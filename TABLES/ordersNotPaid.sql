
 
CREATE TABLE ordersNotPaid   
(id				NUMBER NOT null, 
 menuid         NUMBER NOT null, 
 amount 		number(10) NOT null, 
 summa 			number(10) NOT null, 
 Seller			varchar2(100), 
 DATE 			DATE,
CONSTANT ordersNotPaid_key PRIMARY KEY (id, date)
 ); 

COMMENT ON TABLE  ordersNotPaid IS 'Таблица неоплаченых заказов '; 

COMMENT ON COLUMN ordersNotPaid.ID       IS 'Id заказа за текущий день'; 
COMMENT ON COLUMN ordersNotPaid.menuid   IS 'Код  с меню'; 
COMMENT ON COLUMN ordersNotPaid.amount   IS 'Количество заказаных позиций'; 
COMMENT ON COLUMN ordersNotPaid.summa    IS 'Сумма позиции'; 
COMMENT ON COLUMN ordersNotPaid.Seller   IS 'Продавец'; 
COMMENT ON COLUMN ordersNotPaid.DATE     IS 'Дата'; 




