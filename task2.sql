  CREATE TABLE DEPARTMENT(
  	ID Integer,
	NAME CHAR(20),
	LOCATION CHAR(20),

    PRIMARY KEY (ID)
  );

  CREATE TABLE EMPLOYEE(
  	ID Integer,
	NAME CHAR(20),
	SALARY Integer,
	DEPT_ID Integer,

    PRIMARY KEY (ID),
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(ID)
  );

  INSERT INTO DEPARTMENT
  VALUES(1, "Executive", "Sydney");

  INSERT INTO DEPARTMENT
  VALUES(2, "Production", "Sydney");

  INSERT INTO DEPARTMENT
  VALUES(3, "Resources", "Cape Town");

  INSERT INTO DEPARTMENT
  VALUES(4, "Technical", "Texas");

  INSERT INTO DEPARTMENT
  VALUES(5, "Management", "Paris");


  INSERT INTO EMPLOYEE
  VALUES(1, "Candice", 4685, 1);

  INSERT INTO EMPLOYEE
  VALUES(2, "Julia", 2559, 2);

  INSERT INTO EMPLOYEE
  VALUES(3, "Bob", 4405, 4);

  INSERT INTO EMPLOYEE
  VALUES(4, "Scarlet", 2350, 1);

  INSERT INTO EMPLOYEE
  VALUES(5, "Ileana", 1151, 4);


  SELECT DEPARTMENT.NAME, COUNT(EMPLOYEE.ID) AS NUM_EMPLOYEES
	FROM DEPARTMENT
		LEFT JOIN EMPLOYEE ON DEPARTMENT.ID = EMPLOYEE.DEPT_ID
	GROUP BY DEPARTMENT.NAME
	ORDER BY NUM_EMPLOYEES DESC, DEPARTMENT.NAME ASC;