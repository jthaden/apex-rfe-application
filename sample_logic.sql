-- Creating an RFE

DECLARE
currID NUMBER;
currStatID NUMBER;
BEGIN
SELECT currRFE.nextval, currStatus.nextval INTO currID, currStatID FROM dual;

INSERT INTO F15A7Stat(status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_rfe_id, F15A7EMP_employee_id)
VALUES(currStatID, SYSDATE, 1, null, :P2_EMP_NAME);

INSERT INTO F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
VALUES(currID, :P8_EXPLANATION, :P8_ALT_PROTECTIONS, SYSDATE, currStatID, :P2_EMP_NAME);

UPDATE F15A7Stat SET F15A7Stat.F15A7RFE_rfe_id = currId WHERE F15A7Stat.status_id = currStatID;
END;




-- Editing an RFE

DECLARE 
stat NUMBER;
BEGIN

dbms_output.enable;

SELECT F15A7Stat.F15A7StatCode_status_code INTO stat 
FROM F15A7Stat 
JOIN F15A7RFE on F15A7RFE.rfe_id = F15A7Stat.F15A7RFE_rfe_id WHERE F15A7RFE.rfe_id = :P10_RFE;


IF stat = 1 OR stat = 4 THEN
UPDATE F15A7RFE 
SET F15A7RFE.explanation = :P10_NEW_EXPLANATION WHERE F15A7RFE.rfe_id = :P10_RFE;
UPDATE F15A7RFE 
SET F15A7RFE.alt_protections = :P10_NEW_ALT_PROTECTIONS WHERE F15A7RFE.rfe_id = :P10_RFE;
ELSE 

Dbms_Output.Put_Line('RFE unable to be edited due to status');


END IF;

END;




-- Recall an RFE

DECLARE
currCommID NUMBER;

BEGIN
SELECT currComm.nextval INTO currCommID FROM dual;

UPDATE F15A7Stat SET F15A7Stat.F15A7StatCode_status_code = 4 WHERE F15A7Stat.F15A7RFE_rfe_id = :P11_RFE;

INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7RFE_rfe_id, F15A7Emp_employee_id)
VALUES (currCommID, SYSDATE, 'RFE has been recalled', :P11_RFE, :P2_EMP_NAME);

END;




-- Submit RFE for Approval

DECLARE 
stat NUMBER;
BEGIN

dbms_output.enable;

SELECT F15A7Stat.F15A7StatCode_status_code INTO stat 
FROM F15A7Stat 
JOIN F15A7RFE on F15A7RFE.rfe_id = F15A7Stat.F15A7RFE_rfe_id WHERE F15A7RFE.rfe_id = :P12_RFE;


IF stat = 1 OR stat = 3 OR stat = 4 THEN
UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 2 WHERE F15A7Stat.F15A7RFE_rfe_id = :P12_RFE;
UPDATE F15A7Stat
SET F15A7STAT.effective_date = SYSDATE WHERE F15A7Stat.F15A7RFE_rfe_id = :P12_RFE;
ELSE 

Dbms_Output.Put_Line('RFE unable to be submitted for approval due to status');


END IF;

END;




-- Approve RFE 

DECLARE 
SA NUMBER;
LD NUMBER;
CA NUMBER;
ED NUMBER;
BEGIN

dbms_output.enable;

SELECT F15A7Emp.system_admin_flag, F15A7Emp.lab_dir_flag, F15A7Emp.chairperson_flag, F15A7Emp.exec_director_flag  INTO SA, LD, CA, ED 
FROM F15A7EMP 
WHERE F15A7Emp.employee_id = :P2_EMP_NAME;

IF SA = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 6 WHERE F15A7Stat.F15A7RFE_rfe_id = :P13_RFE;

ELSIF LD = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 7 WHERE F15A7Stat.F15A7RFE_rfe_id = :P13_RFE;

ELSIF CA = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 8 WHERE F15A7Stat.F15A7RFE_rfe_id = :P13_RFE;

ELSIF ED = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 9 WHERE F15A7Stat.F15A7RFE_rfe_id = :P13_RFE;


END IF;

END;




-- Return RFE to Requestor

DECLARE 
SA NUMBER;
LD NUMBER;
CA NUMBER;
ED NUMBER;
currCommID NUMBER;
BEGIN

dbms_output.enable;

SELECT F15A7Emp.system_admin_flag, F15A7Emp.lab_dir_flag, F15A7Emp.chairperson_flag, F15A7Emp.exec_director_flag,currComm.nextval INTO SA, LD, CA, ED, currCommID
FROM F15A7EMP 
WHERE F15A7Emp.employee_id = :P2_EMP_NAME;

IF SA = 1 OR LD = 1 OR CA = 1 OR ED = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 3 WHERE F15A7Stat.F15A7RFE_rfe_id = :P14_RFE;

INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7RFE_rfe_id, F15A7Emp_employee_id)
VALUES (currCommID, SYSDATE, 'RFE has been rejected', :P14_RFE, :P2_EMP_NAME);



END IF;

END;




-- Reject RFE

DECLARE 
SA NUMBER;
LD NUMBER;
CA NUMBER;
ED NUMBER;
currCommID NUMBER;
BEGIN

dbms_output.enable;

SELECT F15A7Emp.system_admin_flag, F15A7Emp.lab_dir_flag, F15A7Emp.chairperson_flag, F15A7Emp.exec_director_flag,currComm.nextval INTO SA, LD, CA, ED, currCommID
FROM F15A7EMP 
WHERE F15A7Emp.employee_id = :P2_EMP_NAME;

IF SA = 1 OR LD = 1 OR CA = 1 OR ED = 1 THEN

UPDATE F15A7Stat
SET F15A7Stat.F15A7StatCode_status_code = 5 WHERE F15A7Stat.F15A7RFE_rfe_id = :P15_RFE;

INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7RFE_rfe_id, F15A7Emp_employee_id)
VALUES (currCommID, SYSDATE, 'RFE has been rejected', :P15_RFE, :P2_EMP_NAME);



END IF;

END;



