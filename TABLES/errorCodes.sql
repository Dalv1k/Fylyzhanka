Drop table errorCodes;
create table errorCodes (
errorCode              number unique not null, 
errortype               varchar2(30), 
errorText               varchar2(256), 
errorDescription       varchar2(2000)
); 

COMMENT ON TABLE  errorCodes              IS '������� �������� ���� ������ ����������'; 
COMMENT ON COLUMN errorCodes.Errorcode 		IS '��� ������';
COMMENT ON COLUMN errorCodes.Errortype 		IS '��� ������';
COMMENT ON COLUMN errorCodes.Errortext 		IS '������� ����� ������';
COMMENT ON COLUMN errorCodes.Errordescription 		IS '�������� ������';


 
