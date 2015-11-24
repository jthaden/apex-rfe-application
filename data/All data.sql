Insert into F15A7LAB (LAB_ID, LAB_NAME)
Values (100, 'Research');
Insert into F15A7LAB (LAB_ID, LAB_NAME)
Values (101, 'Sales');
Insert into F15A7LAB (LAB_ID, LAB_NAME)
Values (102, 'Complaining');

Insert into F15A7AUTH (AUTH_ID, RIGHT)
Values (100, 'View and edit their own RFEs');
Insert into F15A7AUTH (AUTH_ID, RIGHT)
Values (101, 'View and edit all RFEs');


Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 100, 'Kareem Pardini', 'feby.adamsyah@idn.xerox.com', 			'5110', '350-853-5751', to_timestamp('11/16/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '1', 101, 100);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 101, 'Sandi Lockard', 	'expdepot@indosat.net.id',			 	'6460',	'685-282-2412', to_timestamp('11/14/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '1', 101, 101);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 102, 'Marjory Wright', 'djoko_p@jayakartahotelsresorts.com',	'3930',	'235-162-5670', to_timestamp('11/17/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '1', 101, 102);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 103, 'Patience Loehr', 'daniel@balibless.com', 				'6390', '943-706-1005', to_timestamp('11/08/2015','MM/DD/YYYY'), 'I', '0', '0', '0', '0', 100, 101);					 
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 104, 'Benny Cayetano', 'stone@meekness.com', 					'6970', '749-637-1021', to_timestamp('11/11/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '0', 100, 100);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 105, 'Efrain Katzer', 'daniel@hotelpadma.com', 				'9220', '249-988-7204', to_timestamp('11/14/2015','MM/DD/YYYY'), 'A', '0', '0', '1', '0', 101, 101);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 106, 'Morris Embre', 	'trinanda_lestyowati@telkomsel.co.id', 	'2180',	'450-501-9975', to_timestamp('11/08/2015','MM/DD/YYYY'), 'A', '0', '1', '0', '0', 101, 101);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 107, 'Milly Phipps', 	'asst_dos@astonrasuna.com',				'3990',	'748-386-2960', to_timestamp('11/09/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '0', 100, 102);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 108, 'Aurora Keagle', 	'amartabali@dps.centrin.net.id',		'3980','458-873-3495',  to_timestamp('11/22/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '0', 100, 100);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 109, 'Steve Anker', 	'achatv@cbn.net.id', 					'9820', '428-268-4380', to_timestamp('11/01/2015','MM/DD/YYYY'), 'A', '1', '0', '0', '0', 101, 100);
Insert into F15A7EMP  (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_EMAIL, EMPLOYEE_OFFICE, EMPLOYEE_PHONE, STAFF_EFF_DATE, EMPLOYEE_STATUS, SYSTEM_ADMIN_FLAG, EXEC_DIRECTOR_FLAG, CHAIRPERSON_FLAG, LAB_DIR_FLAG, F15A7Auth_auth_id, F15A7Lab_lab_id) 
values( 110, 'Dalene Odum', 	'ca-tech@dps.centrin.net.id', 			'7790', '440-639-1436', to_timestamp('11/10/2015','MM/DD/YYYY'), 'A', '0', '0', '0', '0', 100, 102);


Insert into F15A7StatCode (status_code, description, RFE_status)
values (1, 'Entered', 'The RFE has been created but has not yet been submitted for approval.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (2, 'Submitted', 'The RFE has been submitted to the Lab System Administrator for approval.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (3, 'Returned', 'The RFE has been returned for further information or clarification. Once Submitted again, it will follow the same routing as an Entered RFE.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (4, 'Recalled', 'The requestor has recalled an RFE that has not yet reached final approval. Once Submitted again, it will follow the same routing as an Entered RFE.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (5, 'Rejected', 'The RFE has been rejected and cannot be implemented.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (6, 'SA Approved', 'The Lab System Administrator has approved the RFE; it has been submitted for Lab Director approval.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (7, 'LD Approval', 'The Lab Director has approved the RFE; it has been submitted for Network Security Panel approval.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (8, 'CH Approval', 'The Lab Director has approved the RFE; it has been submitted to the Chairperson of Security Panel approval.');
Insert into F15A7StatCode (status_code, description, RFE_status)
values (9, 'Final Approved', 'The Executive Directors Office has given final approval for the RFE and it may be implemented.');


Insert into F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
values(100, 'Help, help, Im being repressed', 'none', to_timestamp('11/14/2015','MM/DD/YYYY'), null, 104);
Insert into F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
values(101, 'Front door is locked', 'none', to_timestamp('07/18/2015','MM/DD/YYYY'), null, 110);
Insert into F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
values(102, 'There is a dangerous grizzly bear hibernating in the office', 'none', to_timestamp('12/24/2015','MM/DD/YYYY'), null, 106);
Insert into F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
values(103, 'There is also a moose in the office', 'none', to_timestamp('12/25/2015','MM/DD/YYYY'), null, 106);
Insert into F15A7RFE(RFE_id, explanation, alt_protections, approval_review_date, F15A7Stat_status_id, F15A7Emp_employee_id)
values(104, 'I want to go to space', 'none', to_timestamp('02/26/2015','MM/DD/YYYY'), null, 107);


Insert into F15A7Approver (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (100, 105, 100);
Insert into F15A7Approver (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (101, 101, 102);
Insert into F15A7Approver (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (102, 107, 103);

INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(100, to_timestamp('9/11/2015','MM/DD/YYYY'), 'Repression details:', 104, 100);
INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(101, to_timestamp('12/21/2015','MM/DD/YYYY'), 'I can not unlock this door on my own',  110, 101);
INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(102, to_timestamp('06/27/2015','MM/DD/YYYY'), 'This grizzly bear does not look kind', 106, 102);
INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(103, to_timestamp('06/28/2015','MM/DD/YYYY'), 'Management needs to get on this', 108, 102);
INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(104, to_timestamp('02/25/2015','MM/DD/YYYY'), 'Mooses do not belong in offices', 106, 103);
INSERT INTO F15A7Comment(comment_id, comment_entry_date, comments, F15A7Emp_employee_id, F15A7RFE_RFE_id)
values(105, to_timestamp('01/25/2015','MM/DD/YYYY'), 'I am not sure how to get to space. Can anyone help me?', 107, 104);




Insert into F15A7STAT  (status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_RFE_id, F15A7Emp_employee_id)
values(100, to_timestamp('10/11/2015','MM/DD/YYYY'), 100, 104, 100);
Insert into F15A7STAT  (status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_RFE_id, F15A7Emp_employee_id)
values(101, to_timestamp('11/21/2015','MM/DD/YYYY'), 100, 103, 101);
Insert into F15A7STAT  (status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_RFE_id, F15A7Emp_employee_id)
values(102, to_timestamp('11/27/2015','MM/DD/YYYY'), 101, 102, 102);
Insert into F15A7STAT  (status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_RFE_id, F15A7Emp_employee_id)
values(103, to_timestamp('11/14/2015','MM/DD/YYYY'), 104, 100, 103);
Insert into F15A7STAT  (status_id, effective_date, F15A7StatCode_status_code, F15A7RFE_RFE_id, F15A7Emp_employee_id)
values(104, to_timestamp('07/25/2015','MM/DD/YYYY'), 103, 101, 104);


INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (100, 109, 100);
INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (101, 102, 102);
INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (102, 103, 103);
INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (103, 104, 101);
INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (104, 105, 104);
INSERT INTO F15A7Contact (relationship_id, F15A7Emp_employee_id, F15A7RFE_RFE_id)
Values (105, 110, 104);

Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(100, 104);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(101, 101);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(102, 102);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(103, 100);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(104, 103);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(105, 102);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(106, 100);
Insert into F15A7DOC  (document_id, F15A7RFE_RFE_id)
values(107, 101);

Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (100, to_timestamp('11/23/2015','MM/DD/YYYY'), 'RR', 'Release me from repression', 100);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (101, to_timestamp('11/12/2015','MM/DD/YYYY'), 'F', 'Achieve freedom', 100);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (102, to_timestamp('11/15/2015','MM/DD/YYYY'), 'UL', 'Unlock the front door', 101);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (103, to_timestamp('10/12/2015','MM/DD/YYYY'), 'RGB', 'Remove the grizzly bear', 102);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (104, to_timestamp('10/13/2015','MM/DD/YYYY'), 'RGBQ', 'Remove the grizzly bear quickly, please', 102);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (105, to_timestamp('9/12/2015','MM/DD/YYYY'), 'M', 'Why is there a moose in the office? Please also remove the moose from the office', 103);
Insert into F15A7Task (task_id, effective_date, task_abbreviation, task_description, F15A7RFE_RFE_id)
values (106, to_timestamp('9/15/2015','MM/DD/YYYY'), 'TS', 'It is space time', 104);

Insert into F15A7RFETask(relationship_id, F15A7Task_task_id, F15A7RFE_RFE_id)
values(100, 100, 101);
Insert into F15A7RFETask(relationship_id, F15A7Task_task_id, F15A7RFE_RFE_id)
values(101, 102, 104);
Insert into F15A7RFETask(relationship_id, F15A7Task_task_id, F15A7RFE_RFE_id)
values(102, 101, 102);


Insert into F15A7StatHist (status_history_id, F15A7RFE_RFE_id, F15A7Stat_status_id)
values (100, 100, 100);
Insert into F15A7StatHist (status_history_id, F15A7RFE_RFE_id, F15A7Stat_status_id)
values (101, 104, 102);
Insert into F15A7StatHist (status_history_id, F15A7RFE_RFE_id, F15A7Stat_status_id)
values (102, 103, 103);
Insert into F15A7StatHist (status_history_id, F15A7RFE_RFE_id, F15A7Stat_status_id)
values (103, 102, 101);
Insert into F15A7StatHist (status_history_id, F15A7RFE_RFE_id, F15A7Stat_status_id)
values (104, 101, 104);

