CREATE TABLE user_table
( 
user_id number(10) NOT NULL,
user_firstname varchar(50) NOT NULL,
user_lastname varchar(50) NOT NULL,
user_technology varchar(50) NOT NULL,
user_address varchar(50) NOT NULL
);

SELECT * FROM user_table;


INSERT ALL
INTO user_table
(user_id,user_firstname,user_lastname,user_technology,user_address)VALUES(10760,'Pulemalla','Sirisha','nodejs','RangaReddy')
INTO user_table
(user_id,user_firstname,user_lastname,user_technology,user_address)VALUES(10746,'Siripuram','Sirivennela','python','karimnagar')
INTO user_table
(user_id,user_firstname,user_lastname,user_technology,user_address)VALUES(10769,'vandani','Revathi','.net','chirala')
SELECT * FROM dual;

UPDATE user_table
SET user_address = 'vizag'
WHERE user_id = 10769;

set SERVEROUTPUT ON
declare 
  cursor c_users is select user_firstname,user_lastname from user_table;
    v_firstname user_table.user_firstname%type;
    v_lastname user_table.user_lastname%type;

begin
    open c_users;
    fetch c_users into v_firstname,v_lastname;
    fetch c_users into v_firstname,v_lastname;
    dbms_output.put_line(v_firstname|| '' ||v_lastname);
    fetch c_users into v_firstname,v_lastname;
    dbms_output.put_line(v_firstname|| '' ||v_lastname);
    close c_users;
end;

--
--
