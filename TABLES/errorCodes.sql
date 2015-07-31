Drop table errorCodes;
create table errorCodes (
errorCode              number unique not null, 
errortype               varchar2(30), 
errorText               varchar2(256), 
errorDescription       varchar2(2000)
); 

COMMENT ON TABLE  errorCodes              IS 'Таблица содержит коды ошибок приложения'; 
COMMENT ON COLUMN errorCodes.Errorcode 		IS 'Код ошибки';
COMMENT ON COLUMN errorCodes.Errortype 		IS 'Тип ошибки';
COMMENT ON COLUMN errorCodes.Errortext 		IS 'Краткий текст ошибки';
COMMENT ON COLUMN errorCodes.Errordescription 		IS 'Описание ошибки';


 
