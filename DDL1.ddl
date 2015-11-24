--DDL1

Drop Table F15A7Approver Cascade Constraints;
Drop Table F15A7Auth Cascade Constraints;
Drop Table F15A7Comment Cascade Constraints;
Drop Table F15A7Contact Cascade Constraints;
Drop Table F15A7Doc Cascade Constraints;
Drop Table F15A7Emp Cascade Constraints;
Drop Table F15A7Lab Cascade Constraints;
Drop Table F15A7RFE Cascade Constraints;
Drop Table F15A7RFETask Cascade Constraints;
Drop Table F15A7Stat Cascade Constraints;
Drop Table F15A7StatCode Cascade Constraints;
Drop Table F15A7StatHist Cascade Constraints;
Drop Table F15A7Task Cascade Constraints;

CREATE TABLE F15A7Approver
  (
    relationship_id       INTEGER NOT NULL ,
    F15A7Emp_employee_id INTEGER NOT NULL ,
    F15A7RFE_RFE_id      INTEGER NOT NULL
  ) ;
ALTER TABLE F15A7Approver ADD CONSTRAINT F15A7Approvers_PK PRIMARY KEY ( relationship_id ) ;
CREATE TABLE F15A7Auth
  (
    auth_id               INTEGER NOT NULL ,
    right                 VARCHAR2 (500) NOT NULL
  ) ;
  ALTER TABLE F15A7Auth ADD CONSTRAINT F15A7Auth_PK PRIMARY KEY ( auth_id ) ;
  CREATE TABLE F15A7Comment
    (
      comment_id            INTEGER NOT NULL ,
      comment_entry_date    DATE NOT NULL ,
      comments              VARCHAR2 (4000) NOT NULL ,
      F15A7Emp_employee_id INTEGER ,
      F15A7RFE_RFE_id      INTEGER
    ) ;
  ALTER TABLE F15A7Comment ADD CONSTRAINT F15A7Comment_PK PRIMARY KEY ( comment_id ) ;
  CREATE TABLE F15A7Contact
    (
      relationship_id       INTEGER NOT NULL ,
      F15A7Emp_employee_id      INTEGER NOT NULL,
      F15A7RFE_RFE_id INTEGER NOT NULL
    ) ;
  ALTER TABLE F15A7Contact ADD CONSTRAINT F15A7Contacts_PK PRIMARY KEY ( relationship_id ) ;
  CREATE TABLE F15A7Doc
    (
      document_id      INTEGER NOT NULL ,
      document_file    BLOB NOT NULL ,
      document_name    VARCHAR2 (100) NOT NULL ,
      F15A7RFE_RFE_id  INTEGER
    ) ;
  ALTER TABLE F15A7Doc ADD CONSTRAINT F15A7Document_PK PRIMARY KEY ( document_id ) ;
CREATE TABLE F15A7Emp
  (
    employee_id        INTEGER NOT NULL ,
    employee_name      VARCHAR2 (30) NOT NULL ,
    employee_email     VARCHAR2 (100) NOT NULL ,
    employee_office    VARCHAR2 (12) NOT NULL ,
    employee_phone     VARCHAR2 (16) NOT NULL ,
    staff_eff_date     DATE NOT NULL ,
    employee_status    VARCHAR2 (1) NOT NULL ,
    system_admin_flag  VARCHAR2 (1) NOT NULL ,
    exec_director_flag VARCHAR2 (1) NOT NULL ,
    chairperson_flag   VARCHAR2 (1) NOT NULL ,
    lab_dir_flag       VARCHAR2 (1) NOT NULL ,
    F15A7Auth_auth_id INTEGER ,
    F15A7Lab_lab_id   INTEGER
  ) ;
  ALTER TABLE F15A7Emp ADD CONSTRAINT F15A7Emp_PK PRIMARY KEY ( employee_id ) ;
  CREATE TABLE F15A7Lab
    ( lab_id INTEGER NOT NULL,
      lab_name VARCHAR2 (50) NOT NULL
    ) ;
  ALTER TABLE F15A7Lab ADD CONSTRAINT F15A7Lab_PK PRIMARY KEY ( lab_id ) ;
  CREATE TABLE F15A7RFE
    (
      RFE_id                 INTEGER NOT NULL ,
      explanation            VARCHAR2 (4000) NOT NULL ,
      alt_protections        VARCHAR2 (4000) NOT NULL ,
      approval_review_date   DATE NOT NULL ,
      F15A7Stat_status_id INTEGER ,
      F15A7Emp_employee_id  INTEGER NOT NULL
    ) ;
CREATE UNIQUE INDEX F15A7RFE__IDX ON F15A7RFE
  (
    F15A7Stat_status_id ASC
  )
  ;
  ALTER TABLE F15A7RFE ADD CONSTRAINT F15A7RFE_PK PRIMARY KEY ( RFE_id ) ;
  CREATE TABLE F15A7RFETask
    (
      relationship_id    INTEGER NOT NULL ,
      F15A7Task_task_id INTEGER ,
      F15A7RFE_RFE_id   INTEGER
    ) ;
  ALTER TABLE F15A7RFETask ADD CONSTRAINT F15A7RFE_Tasks_PK PRIMARY KEY ( relationship_id ) ;
  CREATE TABLE F15A7Stat
    (
      status_id                      INTEGER NOT NULL ,
      effective_date                 DATE NOT NULL ,
      F15A7StatCode_status_code INTEGER ,
      F15A7Emp_employee_id          INTEGER ,
      F15A7RFE_RFE_id               INTEGER
    ) ;
CREATE UNIQUE INDEX F15A7Stat__IDX ON F15A7Stat
  (
    F15A7RFE_RFE_id ASC
  )
  ;
  ALTER TABLE F15A7Stat ADD CONSTRAINT F15A7Stat_PK PRIMARY KEY ( status_id ) ;
  CREATE TABLE F15A7StatCode
    (
      status_code INTEGER NOT NULL ,
      description VARCHAR2 (500) NOT NULL ,
      RFE_status  VARCHAR2 (500) NOT NULL
    ) ;
  ALTER TABLE F15A7StatCode ADD CONSTRAINT F15A7StatCode_PK PRIMARY KEY ( status_code ) ;
  CREATE TABLE F15A7StatHist
    (
      status_history_id      INTEGER NOT NULL ,
      F15A7RFE_RFE_id       INTEGER ,
      F15A7Stat_status_id INTEGER
    ) ;
  ALTER TABLE F15A7StatHist ADD CONSTRAINT F15A7StatHist_PK PRIMARY KEY ( status_history_id ) ;
  CREATE TABLE F15A7Task
    (
      task_id           INTEGER NOT NULL ,
      effective_date    DATE NOT NULL ,
      task_abbreviation VARCHAR2 (15) NOT NULL ,
      task_description  VARCHAR2 (4000) NOT NULL ,
      F15A7RFE_RFE_id  INTEGER
    ) ;
    
  ALTER TABLE F15A7Task ADD CONSTRAINT F15A7Task_PK PRIMARY KEY ( task_id ) ;
  ALTER TABLE F15A7Approver ADD CONSTRAINT F15A7Approver_F15A7Emp_FK FOREIGN KEY ( F15A7Emp_employee_id ) REFERENCES F15A7Emp ( employee_id ) ;
  ALTER TABLE F15A7Approver ADD CONSTRAINT F15A7Approver_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7Comment ADD CONSTRAINT F15A7Comment_F15A7Emp_FK FOREIGN KEY ( F15A7Emp_employee_id ) REFERENCES F15A7Emp ( employee_id ) ;
  ALTER TABLE F15A7Comment ADD CONSTRAINT F15A7Comment_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7Contact ADD CONSTRAINT F15A7Contact_F15A7Emp_FK FOREIGN KEY ( F15A7Emp_employee_id ) REFERENCES F15A7Emp ( employee_id ) ;
  ALTER TABLE F15A7Contact ADD CONSTRAINT F15A7Contact_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7Doc ADD CONSTRAINT F15A7Doc_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7RFE ADD CONSTRAINT F15A7RFE_F15A7Emp_FK FOREIGN KEY ( F15A7Emp_employee_id ) REFERENCES F15A7Emp ( employee_id ) ;
  ALTER TABLE F15A7RFE ADD CONSTRAINT F15A7RFE_F15A7Stat_FK FOREIGN KEY ( F15A7Stat_status_id ) REFERENCES F15A7Stat ( status_id ) ;
  ALTER TABLE F15A7RFETask ADD CONSTRAINT F15A7RFETask_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7RFETask ADD CONSTRAINT F15A7RFETask_F15A7Task_FK FOREIGN KEY ( F15A7Task_task_id ) REFERENCES F15A7Task ( task_id ) ;
  ALTER TABLE F15A7Stat ADD CONSTRAINT F15A7Stat_F15A7Emp_FK FOREIGN KEY ( F15A7Emp_employee_id ) REFERENCES F15A7Emp ( employee_id ) ;
  ALTER TABLE F15A7Stat ADD CONSTRAINT F15A7Stat_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7Stat ADD CONSTRAINT F15A7Stat_F15A7StatCode_FK FOREIGN KEY ( F15A7StatCode_status_code ) REFERENCES F15A7StatCode ( status_code ) ;
  ALTER TABLE F15A7StatHist ADD CONSTRAINT F15A7StatHist_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;
  ALTER TABLE F15A7StatHist ADD CONSTRAINT F15A7StatHist_F15A7Stat_FK FOREIGN KEY ( F15A7Stat_status_id ) REFERENCES F15A7Stat ( status_id ) ;
  ALTER TABLE F15A7Task ADD CONSTRAINT F15A7Task_F15A7RFE_FK FOREIGN KEY ( F15A7RFE_RFE_id ) REFERENCES F15A7RFE ( RFE_id ) ;



  ALTER TABLE F15A7EMP ADD CONSTRAINT F15A7Emp_F15A7Auth_FK FOREIGN KEY ( F15A7AUTH_AUTH_ID ) REFERENCES F15A7AUTH ( auth_id ) ;
  ALTER TABLE F15A7Emp ADD CONSTRAINT F15A7Emp_F15A7Lab_FK FOREIGN KEY ( F15A7LAB_LAB_ID ) REFERENCES F15A7Lab ( lab_id ) ;
  ALTER TABLE F15A7EMP ADD CONSTRAINT F15A7Emp_Stat CHECK (employee_status IN ('A', 'I')) ;

DROP SEQUENCE currStatus; 
CREATE SEQUENCE currStatus
 START WITH    110
 INCREMENT BY  1 
 CACHE 20;


DROP SEQUENCE currRFE; 
CREATE SEQUENCE currRFE
 START WITH    1020
 INCREMENT BY  1 
 CACHE 20;

DROP SEQUENCE currFile; 
CREATE SEQUENCE currFile
 START WITH    700
 INCREMENT BY  1 
 CACHE 20;

