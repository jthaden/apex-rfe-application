-- Generated by Oracle SQL Developer Data Modeler 4.0.2.840
--   at:        2015-09-15 21:32:48 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g

DROP TABLE F15_APCourse CASCADE CONSTRAINTS;
DROP TABLE F15_Student CASCADE CONSTRAINTS;
DROP TABLE F15_s_c CASCADE CONSTRAINTS;

CREATE TABLE F15_APCourse
  (
    apcourse_id INTEGER NOT NULL ,
    title       VARCHAR2 (255) ,
    units       VARCHAR2 (255)
  ) ;
ALTER TABLE F15_APCourse ADD CONSTRAINT F15_APCourse_PK PRIMARY KEY ( apcourse_id ) ;

CREATE TABLE F15_Student
  (
    student_id INTEGER NOT NULL ,
    type       VARCHAR2 (255) ,
    sname      VARCHAR2 (4000) ,
    gpa        NUMBER ,
    state      VARCHAR2 (255) ,
    ssn        VARCHAR2 (255) ,
    country    VARCHAR2 (255)
  ) ;
ALTER TABLE F15_Student ADD CONSTRAINT F15_Student_PK PRIMARY KEY ( student_id ) ;

CREATE TABLE F15_s_c
  (
    s_c_id                   INTEGER NOT NULL ,
    F15_Student_student_id   INTEGER NOT NULL ,
    F15_APCourse_apcourse_id INTEGER NOT NULL ,
    YEAR                     DATE ,
    grade                    VARCHAR2 (255)
  ) ;
ALTER TABLE F15_s_c ADD CONSTRAINT F15_s_c_PK PRIMARY KEY ( s_c_id ) ;

ALTER TABLE F15_s_c ADD CONSTRAINT F15_s_c_F15_APCourse_FK FOREIGN KEY ( F15_APCourse_apcourse_id ) REFERENCES F15_APCourse ( apcourse_id ) ;

ALTER TABLE F15_s_c ADD CONSTRAINT F15_s_c_F15_Student_FK FOREIGN KEY ( F15_Student_student_id ) REFERENCES F15_Student ( student_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
