CREATE TABLE `SHIFT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `ORGANIZATION_ID` int(11) NOT NULL,
  `SHIFT_DATE` DATE NOT NULL,
  `START_TIME` TIME NOT NULL,
  `END_TIME` TIME NOT NULL,
  `SHIFT_HOURS` DOUBLE NOT NULL,
  `EMPLOYEE_RATE` DOUBLE NOT NULL,
  `ORGANIZATION_RATE` DOUBLE NOT NULL,
  `STATUS_ID` int(11),
  `NOTES` VARCHAR(255),
  `WORK_TYPE` VARCHAR(50),
  `CREATED_TS` DATETIME NOT NULL,
  `MODIFIED_TS` DATETIME NOT NULL,  
  PRIMARY KEY (`ID`),
  CONSTRAINT FK_EMPLOYEE_SHIFT FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  CONSTRAINT FK_ORGANIZATION_SHIFT FOREIGN KEY (ORGANIZATION_ID) REFERENCES ORGANIZATION(ID),
  CONSTRAINT FK_STATUS_SHIFT FOREIGN KEY (STATUS_ID) REFERENCES SHIFT_STATUS(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;