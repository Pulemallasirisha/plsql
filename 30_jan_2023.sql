CREATE TABLE user_table1
( 
user_id number(10) NOT NULL,
user_firstname varchar(50) NOT NULL,
user_lastname varchar(50) NOT NULL,
user_technology varchar(50) NOT NULL,
user_salary number(10) NOT NULL
);
SELECT * FROM user_table1;


INSERT ALL
INTO user_table1
(user_id,user_firstname,user_lastname,user_technology,user_salary)VALUES(10760,'Pulemalla','Sirisha','nodejs','00')
INTO user_table1
(user_id,user_firstname,user_lastname,user_technology,user_salary)VALUES(10746,'Siripuram','Sirivennela','python','150')
INTO user_table1
(user_id,user_firstname,user_lastname,user_technology,user_salary)VALUES(10769,'vandani','Revathi','.net','1500')
SELECT * FROM dual;


CREATE OR REPLACE TRIGGER display_salary_changes
BEFORE DELETE OR INSERT OR UPDATE ON user_table1
FOR EACH ROW
WHEN (NEW.user_id > 0)
DECLARE
    sal_diff number;
BEGIN  
   sal_diff := :NEW.user_salary  - :OLD.user_salary;
    dbms_output.put_line('Old user_salary: ' || :OLD.user_salary);
    dbms_output.put_line('New user_salary: ' || :NEW.user_salary);  
    dbms_output.put_line('Salary difference: ' || sal_diff);
END;

INSERT INTO user_table1(user_id,user_firstname,user_lstname,user_technology,user_salary)VALUES(10760,'Pulemalla','Sirisha','nodejs',15000);   
UPDATE user_table1 
SET user_salary = user_salary + 10000
WHERE user_id = 10760;

