
 
CREATE TABLE ordersNotPaid   
(id				NUMBER NOT null, 
 menuid         NUMBER NOT null, 
 amount 		number(10) NOT null, 
 summa 			number(10) NOT null, 
 Seller			varchar2(100), 
 DATE 			DATE,
CONSTANT ordersNotPaid_key PRIMARY KEY (id, date)
 ); 

COMMENT ON TABLE  ordersNotPaid IS '������� ����������� ������� '; 

COMMENT ON COLUMN ordersNotPaid.ID       IS 'Id ������ �� ������� ����'; 
COMMENT ON COLUMN ordersNotPaid.menuid   IS '���  � ����'; 
COMMENT ON COLUMN ordersNotPaid.amount   IS '���������� ��������� �������'; 
COMMENT ON COLUMN ordersNotPaid.summa    IS '����� �������'; 
COMMENT ON COLUMN ordersNotPaid.Seller   IS '��������'; 
COMMENT ON COLUMN ordersNotPaid.DATE     IS '����'; 




