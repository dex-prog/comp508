CREATE TABLE Category
(
    CategoryID NUMBER(2) NOT NULL,
    CategoryName VARCHAR2(50),
    CONSTRAINT category_categoryID_pk PRIMARY KEY(CategoryID)
);

CREATE TABLE Location
(
    LocationID NUMBER(5) NOT NULL,
    LocationName VARCHAR2(100) NOT NULL,
    Latitude NUMBER(9, 6),
    Longitude NUMBER(9, 6),
    LocationDescription VARCHAR(200),
    CONSTRAINT location_locationID_pk PRIMARY KEY(LocationID)
);

CREATE TABLE Project
(
    ProjectCode CHAR(5) NOT NULL,
    ProjectName VARCHAR2(100) NOT NULL,
    ProjectDescription VARCHAR2(200),
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    CONSTRAINT project_projectcode_pk PRIMARY KEY(ProjectCode)
);

CREATE TABLE Contractor
(
    ContractorID NUMBER(5) NOT NULL,
    ContractorName VARCHAR2(100) NOT NULL,
    ContractorEmail VARCHAR2(100),
    ContractorPhoneNo VARCHAR2(50),
    ContractorStreetNo VARCHAR2(30),
    ContractorStreetName VARCHAR2(100),
    ContractorSuburb VARCHAR2(100),
    ContractorCity VARCHAR2(100),
    ConstractorPostalCode CHAR(4),
    CONSTRAINT contractor_contractorID_pk PRIMARY KEY(ContractorID)
);

CREATE TABLE Role
(
    RoleID NUMBER(3) NOT NULL,
    RoleName VARCHAR2(100) NOT NULL,
    RoleDescription VARCHAR2(200),
    CONSTRAINT role_roleID_pk PRIMARY KEY(RoleID)
);

CREATE TABLE Employee
(
    EmployeeID NUMBER(5) NOT NULL,
    EmployeeFirstName VARCHAR2(100),
    EmployeeLastName VARCHAR2(100),
    EmployeeDateOfBirth DATE,
    Gender CHAR(10),
    EmployeeContactPhoneNo VARCHAR2(50),
    EmployeeEmail VARCHAR2(100),
    EmployeeStreetNo VARCHAR2(30),
    EmployeeStreetName VARCHAR2(100),
    EmployeeSuburb VARCHAR2(100),
    EmployeeCity VARCHAR2(100),
    EmployeePostalCode CHAR(4),
    StartDateOfEmployment DATE,
    CONSTRAINT employee_employeeID_pk PRIMARY KEY(EmployeeID)
);

CREATE TABLE Road
(
    RoadID NUMBER(5) NOT NULL,
    RoadName VARCHAR2(100) NOT NULL,
    RoadDescription VARCHAR2(200),
    RoadLength NUMBER(10, 2),
    RoadLengthUnit CHAR(5),
    ParentRoadID NUMBER(5),
    CategoryID NUMBER(2) NOT NULL,
    StartLocationID NUMBER(5) NOT NULL,
    EndLocationID NUMBER(5) NOT NULL,
    CONSTRAINT road_roadID_pk PRIMARY KEY(RoadID),
    CONSTRAINT road_categoryID_fk FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    CONSTRAINT road_startlocationID_fk FOREIGN KEY (StartLocationID) REFERENCES Location(LocationID),
    CONSTRAINT road_endlocationID_fk FOREIGN KEY (EndLocationID) REFERENCES Location(LocationID)
);




CREATE TABLE Road_Project
(
    Road_Project_ID NUMBER(5) NOT NULL,
    RoadID NUMBER(5) NOT NULL,
    ProjectCode CHAR(5) NOT NULL,
    CONSTRAINT road_project_roadprojectID_pk PRIMARY KEY(Road_Project_ID),
    CONSTRAINT road_project_roadID_fk FOREIGN KEY (RoadID) REFERENCES Road(RoadID),
    CONSTRAINT road_project_projectcode_fk FOREIGN KEY (ProjectCode) REFERENCES Project(ProjectCode)
);



CREATE TABLE Contract
(
    ContractNo CHAR(6) NOT NULL,
    ContractName VARCHAR2(100) NOT NULL,
    ContractDescription VARCHAR2(200),
    EstimatedCost NUMBER(10, 2),
    ActualCost NUMBER(10, 2),
    ContractStartDate DATE,
    ContractEndDate DATE,
    ProjectCode CHAR(5) NOT NULL,
    ContractorID NUMBER(5) NOT NULL,
    CONSTRAINT contract_contractno_pk PRIMARY KEY(ContractNo),
    CONSTRAINT contract_projectcode_fk FOREIGN KEY(ProjectCode) REFERENCES Project(ProjectCode),
    CONSTRAINT contract_contractorID_fk FOREIGN KEY(ContractorID) REFERENCES Contractor(ContractorID)
);





CREATE TABLE Employee_Role
(
    EmployeeRoleID NUMBER(10) NOT NULL,
    RoleID NUMBER(3) NOT NULL,
    EmployeeID NUMBER(5) NOT NULL,
    RoleStartDate DATE NOT NULL,
    RoleEndDate DATE,
    ProjectCode CHAR(5) NOT NULL,
    ContractNo CHAR(6),
    ChangeReason VARCHAR2(200),
    CONSTRAINT employee_role_pk PRIMARY KEY(EmployeeRoleID),
    CONSTRAINT employee_role_roleID_fk FOREIGN KEY(RoleID) REFERENCES Role(RoleID),
    CONSTRAINT employee_role_employeeID_fk FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID),
    CONSTRAINT employee_role_projectcode_fk FOREIGN KEY(ProjectCode) REFERENCES Project(ProjectCode),
    CONSTRAINT employee_role_contractno_fk FOREIGN KEY(ContractNo) REFERENCES Contract(ContractNo)
);
