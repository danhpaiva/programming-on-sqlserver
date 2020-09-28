CREATE DATABASE dbEmpresa
GO

USE dbEmpresa
GO 

CREATE TABLE DEPT
       (DEPTNO INT PRIMARY KEY,
        NOME VARCHAR(50),
        LOC VARCHAR(50) )
GO

INSERT INTO DEPT VALUES (10,'CONTABILIDADE','NEW YORK')
GO

INSERT INTO DEPT VALUES (20,'PESQUISA','DALLAS')
GO

INSERT INTO DEPT VALUES (30,'VENDA','CHICAGO')
GO

INSERT INTO DEPT VALUES (40,'OPERACIONAL','BOSTON')
GO

INSERT INTO DEPT VALUES (50,'DEPT_TESTE','BOSTON')
GO

INSERT INTO DEPT VALUES (60,'DEPT%TESTE','BOSTON')
GO


CREATE TABLE EMP
       (EMPNO INT NOT NULL PRIMARY KEY,
        NOME VARCHAR(20),
        CARGO VARCHAR(20),
        GERENTE INT,
        DATACONTRATACAO DATETIME,
        SALARIO MONEY,
        COMISSAO MONEY,
        DEPTNO INT
        CONSTRAINT FK_DEPT FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO))
GO

SET LANGUAGE ENGLISH
GO

INSERT INTO EMP VALUES
        (7369,'SMITH','BALCONISTA',7902,'17-DEC-10',3500,NULL,20)
GO

INSERT INTO EMP VALUES
        (7499,'ALLEN','VENDEDOR',7698,'20-FEB-11',5050.50,300,30)
GO

INSERT INTO EMP VALUES
        (7521,'WARD','VENDEDOR',7698,'22-FEB-15',4250.75,500,30)
GO

INSERT INTO EMP VALUES
        (7566,'JONES','GERENTE',7839,'2-APR-13',7600,NULL,20)
GO

INSERT INTO EMP VALUES
        (7654,'MARTIN','VENDEDOR',7698,'28-SEP-13',4250,1400,30)
GO

INSERT INTO EMP VALUES
        (7698,'BLAKE','GERENTE',7839,'1-MAY-16',7850,NULL,30)
GO

INSERT INTO EMP VALUES
        (7782,'CLARK','GERENTE',7839,'9-JUN-12',9450,NULL,10)
GO

INSERT INTO EMP VALUES
        (7788,'SCOTT','ANALISTA',7566,'09-DEC-11',5000,NULL,20)
GO

INSERT INTO EMP VALUES
        (7839,'KING','PRESIDENTE',NULL,'17-NOV-14',15000,NULL,10)
GO

INSERT INTO EMP VALUES
        (7844,'TURNER','VENDEDOR',7698,'8-SEP-15',4500,0,30)
GO

INSERT INTO EMP VALUES
        (7876,'ADAMS','BALCONISTA',7788,'12-JAN-13',1100,NULL,20)
GO

INSERT INTO EMP VALUES
        (7900,'JAMES','BALCONISTA',7698,'3-DEC-11',1950,NULL,30)
GO

INSERT INTO EMP VALUES
        (7902,'FORD','ANALISTA',7566,'3-DEC-10',3800,NULL,20)
GO

INSERT INTO EMP VALUES
        (7934,'MILLER','BALCONISTA',7782,'23-JAN-12',1300,NULL,10)
GO

CREATE TABLE SALGRADE
      ( GRAU INT,
        SALMINIMO MONEY,
        SALMAXIMO MONEY)
GO

INSERT INTO SALGRADE VALUES (1,0,2000)
GO

INSERT INTO SALGRADE VALUES (2,2000,4000)
GO

INSERT INTO SALGRADE VALUES (3,4000,6000)
GO

INSERT INTO SALGRADE VALUES (4,6000,9000)
GO

INSERT INTO SALGRADE VALUES (5,9000,99999)
GO