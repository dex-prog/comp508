-- data population scripts 
--CREATE TABLE Category
--(
--    CategoryID NUMBER(2) NOT NULL,
--    CategoryName VARCHAR2(50),
--    CONSTRAINT category_categoryID_pk PRIMARY KEY(CategoryID)
--);

INSERT INTO Category(CategoryID, CategoryName) VALUES(1, 'main highway');
INSERT INTO Category(CategoryID, CategoryName) VALUES(2, 'secondary road');
INSERT INTO Category(CategoryID, CategoryName) VALUES(3, 'local street');
INSERT INTO Category(CategoryID, CategoryName) VALUES(4, 'unsealed road');
INSERT INTO Category(CategoryID, CategoryName) VALUES(5, 'service lane');

--CREATE TABLE Location
--(
--    LocationID NUMBER(5) NOT NULL,
--    LocationName VARCHAR2(100) NOT NULL,
--    Latitude NUMBER(9, 6),
--    Longitude NUMBER(9, 6),
--    LocationDescription VARCHAR(200),
--    CONSTRAINT location_locationID_pk PRIMARY KEY(LocationID)
--);

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(1, 'Cape Reinga', -34.4293, 172.6816, 'SH1 Start location');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(2, 'Stirling Point, Bluff', -46.6097, 168.3472, 'SH1 End location');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(3, 'Johnstones Hill Tunnels, Puhoi', -36.4733, 174.6566, 'Johnstones Hill Tunnels, Puhoi');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(4, 'Central Motorway Junction, Auckland CBD', -36.8590, 174.7635, 'Central Motorway Junction, Auckland CBD');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(6, 'Grafton Interchange (SH1 South exit)', -36.8604, 174.7600, 'Grafton Interchange (SH1 South exit)');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(7, 'Bombay Hills Interchange', -37.2360, 175.0030, 'Bombay Hills Interchange');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(8, 'Port of Auckland', -36.8445, 174.7752, 'Port of Auckland (Quay St & The Strand)');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(9, 'Brigham Creek Roundabout', -36.7870, 174.6050, 'Brigham Creek Roundabout, West Auckland');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(10, 'Waimauku Township Entrance', -36.7935, 174.4920, 'Waimauku Township Entrance');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(11, 'Halsey Street, Victoria Park edge', -36.8508, 174.7642, 'Halsey Street, Victoria Park edge');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(12, 'Grafton Road, near Auckland Hospital', -36.8600, 174.7705, 'Grafton Road, near Auckland Hospital');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(13, 'College Hill / Beaumont Street', -36.8481, 174.7619, 'College Hill / Beaumont Street (Victoria Park edge)');

INSERT INTO Location(LocationID, LocationName, Latitude, Longitude, LocationDescription)
VALUES(14, 'Kitchener Street / Albert Park entrance', -36.8480, 174.7695, 'Kitchener Street / Albert Park entrance');

--CREATE TABLE Road
--(
--    RoadID NUMBER(5) NOT NULL,
--    RoadName VARCHAR2(100) NOT NULL,
--    RoadDescription VARCHAR2(200),
--    RoadLength NUMBER(5, 2),
--    ParentRoadID NUMBER(5),
--    CategoryID NUMBER(2) NOT NULL,
--    StartLocationID NUMBER(5) NOT NULL,
--    EndLocationID NUMBER(5) NOT NULL,
--    CONSTRAINT road_roadID_pk PRIMARY KEY(RoadID),
--    CONSTRAINT road_categoryID_fk FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
--    CONSTRAINT road_startlocationID_fk FOREIGN KEY (StartLocationID) REFERENCES Location(LocationID),
--    CONSTRAINT road_endlocationID_fk FOREIGN KEY (EndLocationID) REFERENCES Location(LocationID)
--);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(1, 'SH 1', 'Northern & Southern Motorway', 1074, 'km', null, 1, 1, 2);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(2, 'SH1 North', 'Northern Motorway', 58, 'km', 1, 2, 3, 4);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(3, 'SH1 South', 'Southern Motorway', 45, 'km', 1, 2, 4, 7);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(4, 'SH 16', 'Northwestern Motorway', 108, 'km', null, 1, 8, 9);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(5, 'SH16 Urban', 'Northwestern Motorway Urban Section', 21, 'km', 4, 2, 8, 9);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(6, 'SH16 Rural', 'Kaipara Coast Highway', 87, 'km', 4, 2, 9, 10);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(7, 'Wellesley Street', 'Wellesley Street, Auckland', 1.5, 'km', null, 3, 11, 12);

INSERT INTO Road(RoadID, RoadName, RoadDescription, RoadLength, RoadLengthUnit, ParentRoadID, CategoryID, StartLocationID, EndLocationID)
VALUES(8, 'Victoria Street', 'Wellesley Street, Auckland', 1.42, 'km', null, 3, 13, 14);


--CREATE TABLE Project
--(
--    ProjectCode CHAR(5) NOT NULL,
--    ProjectName VARCHAR2(100) NOT NULL,
--    ProjectDescription VARCHAR2(200),
--    ProjectStartDate DATE,
--    ProjectEndDate DATE,
--    CONSTRAINT project_projectcode_pk PRIMARY KEY(ProjectCode)
--);

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ001', 'Te Waihorotiu Station', 'A new underground train station in central Auckland, part of the City Rail Link project', TO_DATE('2019-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'));

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ002', 'Midtown wastewater diversion', 'Watercare Midtown Wastewater Diversion project', TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'));

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ003', 'Te Hā Noa - Victoria Street', 'Te Hā Noa is a project to transform Victoria Street in central Auckland into a "linear park," creating a people-focused, green corridor from Victoria Park to Albert Park', TO_DATE('2023-04-11', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'));

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ004', 'Northern Corridor Improvements (NCI) Project', 'Northern Busway extension and improvements to the Onewa Road Interchange', TO_DATE('2018-04-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ005', 'Papakura to Bombay (P2B)', 'Upgrading State Highway 1 (SH1) in south Auckland to improve safety, resilience, and capacity to support future growth', TO_DATE('2021-04-01', 'YYYY-MM-DD'), TO_DATE('2030-12-31', 'YYYY-MM-DD'));

INSERT INTO Project(ProjectCode, ProjectName, ProjectDescription, ProjectStartDate, ProjectEndDate)
VALUES('PJ006', 'Ara Tūhono – Pūhoi to Warkworth', 'Construction of 18.5 kilometres of highway with four lanes between Pūhoi and Warkworth with 100 km design speed', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'));

--CREATE TABLE Road_Project
--(
--    Road_Project_ID NUMBER(5) NOT NULL,
--    RoadID NUMBER(5) NOT NULL,
--    ProjectCode CHAR(5) NOT NULL,
--    CONSTRAINT road_project_roadprojectID_pk PRIMARY KEY(Road_Project_ID),
--    CONSTRAINT road_project_roadID_fk FOREIGN KEY (RoadID) REFERENCES Road(RoadID),
--    CONSTRAINT road_project_projectcode_fk FOREIGN KEY (ProjectCode) REFERENCES Project(ProjectCode)
--);

INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(1, 7, 'PJ001');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(2, 8, 'PJ001');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(3, 8, 'PJ002');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(4, 8, 'PJ003');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(5, 2, 'PJ004');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(6, 3, 'PJ005');
INSERT INTO Road_Project(Road_Project_ID, RoadID, ProjectCode) VALUES(7, 4, 'PJ006');

--CREATE TABLE Contractor
--(
--    ContractorID NUMBER(5) NOT NULL,
--    ContractorName VARCHAR2(100) NOT NULL,
--    ContractorEmail VARCHAR2(100),
--    ContractorPhoneNo VARCHAR2(50),
--    ContractorStreetNo CHAR(10),
--    ContractorStreetName VARCHAR2(100),
--    ContractorSuburb VARCHAR2(100),
--    ContractorCity VARCHAR2(100),
--    ConstractorPostalCode CHAR(4),
--    CONSTRAINT contractor_contractorID_pk PRIMARY KEY(ContractorID)
--);

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(1, 'The Link Alliance', 'thelinkalliance@hotmail.com', '021561262', '1', 'New North Road', 'Eden Terrace', 'Auckland', '1149');

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(2, 'Martinus Rail', 'martinusrail@hotmail.com', '021561263', '161',  'Neilson Street', 'Onehunga', 'Auckland', '1061');

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(3, 'McConnell Dowell', 'mcconnelldowell@hotmail.com', '021561264', '510', 'Mt Wellington Highway', 'Mt Wellington', 'Auckland', '1060'); 

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(4, 'City Rail Link', 'cityraillinknz@hotmail.com', '021561265', '12', 'Morgan Street', 'Newmarket', 'Auckland', '1023'); 

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(5, 'Fulton Hogan', 'fultonhogannz@hotmail.com', '021561265', '15', 'Sir William Pickering Drive', 'Harewood', 'Christchurch', '8053'); 

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(6, 'Aurecon', 'aureconnz@hotmail.com', '021561266', 'Te Tihi 3/110', 'Carlton Gore Road', 'Newmarket', 'Auckland', '1023'); 

INSERT INTO Contractor(ContractorID, ContractorName, ContractorEmail, ContractorPhoneNo, ContractorStreetNo, ContractorStreetName, ContractorSuburb, ContractorCity, ConstractorPostalCode)
VALUES(7, 'Fletcher Construction (New Zealand)', 'fletcherconstructionnz@hotmail.com', '021561267', '810', 'Great South Road', 'Penrose', 'Auckland', '1061'); 
--CREATE TABLE Contract
--(
--    ContractNo CHAR(6) NOT NULL,
--    ContractName VARCHAR2(100) NOT NULL,
--    ContractDescription VARCHAR2(200),
--    EstimatedCost NUMBER(10, 2),
--    ActualCost NUMBER(10, 2),
--    ContractStartDate DATE,
--    ContractEndDate DATE,
--    ProjectCode CHAR(5) NOT NULL,
--    ContractorID NUMBER(5) NOT NULL,
--    CONSTRAINT contract_contractno_pk PRIMARY KEY(ContractNo),
--    CONSTRAINT contract_projectcode_fk FOREIGN KEY(ProjectCode) REFERENCES Project(ProjectCode),
--    CONSTRAINT contract_contractorID_fk FOREIGN KEY(ContractorID) REFERENCES Contractor(ContractorID)
--);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0001', 'Main Contract', 'Main station and tunnel work', 100000000.00, 110000000.00, TO_DATE('2019-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 'PJ001', 4);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0002', 'Structural and track works', 'Structural and track works', 50000000.00, 60000000.00, TO_DATE('2019-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 'PJ001', 2);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0003', 'Main Contract', 'Boring and Pipe laying', 30000000.00, 25000000.00, TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 'PJ002', 3);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0004', 'Road Amendment', 'Victorial Street Road Amendment', 45000000.00, 42000000.00, TO_DATE('2023-04-11', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 'PJ003', 4);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0005', 'Infrastructure Development', 'Infrastructure Development for Northern Corridor', 86000000.00, 90000000.00, TO_DATE('2018-04-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'PJ004', 1);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0006', 'Landscape improvement', 'Landscape improvement for Northern Corridor', 20000000.00, 19000000.00, TO_DATE('2018-04-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'PJ004', 5);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0007', 'Design and Groundwork', 'Design and Groundwork for P2B project', 180000000.00, 179000000.00, TO_DATE('2021-04-01', 'YYYY-MM-DD'), TO_DATE('2030-12-31', 'YYYY-MM-DD'), 'PJ005', 6);

INSERT INTO Contract(ContractNo, ContractName, ContractDescription, EstimatedCost, ActualCost, ContractStartDate, ContractEndDate, ProjectCode, ContractorID)
VALUES('CR0008', 'Four-lane dual carriageway', 'Four-lane dual carriageway for Ara Tūhono – Pūhoi to Warkworth', 200000000.00, 201000000.00, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 'PJ006', 7);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CREATE TABLE Role
--(
--    RoleID NUMBER(3) NOT NULL,
--    RoleName VARCHAR2(100) NOT NULL,
--    RoleDescription VARCHAR2(200),
--    CONSTRAINT role_roleID_pk PRIMARY KEY(RoleID)
--);

INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(1, 'Project Manager', 'plans, organizes, and oversees the completion of a project');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(2, 'Architect', 'Develops conceptual and detailed designs based on client needs, site conditions, and regulations');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(3, 'Field Engineer', 'Technical specialist who ensures that on-site work aligns with design specifications, safety standards, and project timelines');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(4, 'Supervisor', 'Oversees daily operations, ensures work is done safely and to spec');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(5, 'Foreman', 'Supervises a specific crew or trade, such as concrete, carpentry, or electrical work');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(5, 'Field Technician', 'Supports on-site construction by performing technical tasks, inspections, and equipment setup.');
INSERT INTO Role(RoleID, RoleName, RoleDescription) VALUES(6, 'Laborer', 'Perform manual work to assist with site preparation, construction, maintenance, and cleanup.');

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CREATE TABLE Employee
--(
--    EmployeeID NUMBER(5) NOT NULL,
--    EmployeeFirstName VARCHAR2(100),
--    EmployeeLastName VARCHAR2(100),
--    EmployeeDateOfBirth DATE,
--    Gender CHAR(10),
--    EmployeeContactPhoneNo VARCHAR2(50),
--    EmployeeEmail VARCHAR2(100),
--    EmployeeStreetNo CHAR(10),
--    EmployeeStreetName VARCHAR2(100),
--    EmployeeSuburb VARCHAR2(100),
--    EmployeeCity VARCHAR2(100),
--    EmployeePostalCode CHAR(4),
--    StartDateOfEmployment DATE,
--    CONSTRAINT employee_employeeID_pk PRIMARY KEY(EmployeeID)
--);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(1, 'John', 'Lennon', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Male', '095735812', 'johnlennon.uk@yahoo.com', '1', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(2, 'Paul', 'McCartney', TO_DATE('2000-01-02', 'YYYY-MM-DD'), 'Male', '095735813', 'paulmccartney.uk@yahoo.com', '2', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(3, 'George', 'Harrison', TO_DATE('2000-01-03', 'YYYY-MM-DD'), 'Male', '095735814', 'george.harrison.uk@yahoo.com', '3', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(4, 'Ringo', 'Starr', TO_DATE('2000-01-04', 'YYYY-MM-DD'), 'Male', '095735815', 'ringo.starr.uk@yahoo.com', '4', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(5, 'Mick', 'Jagger', TO_DATE('2000-01-05', 'YYYY-MM-DD'), 'Male', '095735816', 'mick.jagger.uk@yahoo.com', '5', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(6, 'Keith', 'Richard', TO_DATE('2000-01-05', 'YYYY-MM-DD'), 'Male', '095735816', 'keith.richard.uk@yahoo.com', '6', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(7, 'Ronnie', 'Wood', TO_DATE('2000-01-06', 'YYYY-MM-DD'), 'Male', '095735817', 'ronnie.wood.uk@yahoo.com', '7', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(8, 'Charlie', 'Watts', TO_DATE('2000-01-07', 'YYYY-MM-DD'), 'Male', '095735818', 'charlie.watts.uk@yahoo.com', '8', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(9, 'Brian', 'Jones', TO_DATE('2000-01-08', 'YYYY-MM-DD'), 'Male', '095735818', 'brian.jones.uk@yahoo.com', '9', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(10, 'Freddy', 'Mercury', TO_DATE('2000-01-09', 'YYYY-MM-DD'), 'Male', '095735819', 'freddy.mercury.uk@yahoo.com', '10', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(11, 'Brian', 'May', TO_DATE('2000-01-10', 'YYYY-MM-DD'), 'Male', '095735820', 'brian.may.uk@yahoo.com', '11', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(12, 'John', 'Deacon', TO_DATE('2000-01-11', 'YYYY-MM-DD'), 'Male', '095735821', 'john.deacon.uk@yahoo.com', '12', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(13, 'Roger', 'Taylor', TO_DATE('2000-01-12', 'YYYY-MM-DD'), 'Male', '095735822', 'roger.taylor.uk@yahoo.com', '13', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(14, 'Ozzy', 'Osbourne', TO_DATE('2000-01-13', 'YYYY-MM-DD'), 'Male', '095735823', 'ozzyosbourne.uk@yahoo.com', '14', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(15, 'Steven', 'Tyler', TO_DATE('2000-01-14', 'YYYY-MM-DD'), 'Male', '095735824', 'steven.tyler.us@yahoo.com', '15', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(16, 'Joe', 'Perry', TO_DATE('2000-01-15', 'YYYY-MM-DD'), 'Male', '095735825', 'joe.perry.us@yahoo.com', '16', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(17, 'Brad', 'Whitford', TO_DATE('2000-01-16', 'YYYY-MM-DD'), 'Male', '095735826', 'brad.whitford.us@yahoo.com', '17', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(18, 'Tom', 'Hamilton', TO_DATE('2000-01-17', 'YYYY-MM-DD'), 'Male', '095735826', 'tom.hamilton.us@yahoo.com', '18', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(19, 'Joey', 'Kramer', TO_DATE('2000-01-18', 'YYYY-MM-DD'), 'Male', '095735826', 'joey.kramer.us@yahoo.com', '19', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

INSERT INTO Employee(EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeDateOfBirth, Gender, EmployeeContactPhoneNo, EmployeeEmail, EmployeeStreetNo, EmployeeStreetName, EmployeeSuburb, EmployeeCity, EmployeePostalCode)
VALUES(20, 'Rick', 'Dufay', TO_DATE('2000-01-19', 'YYYY-MM-DD'), 'Male', '095735827', 'rick.dufay.us@yahoo.com', '20', 'Hobson street', 'Auckland CBD', 'Auckland', 1010);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CREATE TABLE Employee_Role
--(
--    EmployeeRoleID NUMBER(10) NOT NULL,
--    RoleID NUMBER(3) NOT NULL,
--    EmployeeID NUMBER(5) NOT NULL,
--    RoleStartDate DATE NOT NULL,
--    RoleEndDate DATE,
--    ProjectCode CHAR(5) NOT NULL,
--    ContractNo CHAR(6),
--    ChangeReason VARCHAR2(200),
--    CONSTRAINT employee_role_pk PRIMARY KEY(EmployeeRoleID),
--    CONSTRAINT employee_role_roleID_fk FOREIGN KEY(RoleID) REFERENCES Role(RoleID),
--    CONSTRAINT employee_role_employeeID_fk FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID),
--    CONSTRAINT employee_role_projectcode_fk FOREIGN KEY(ProjectCode) REFERENCES Project(ProjectCode),
--    CONSTRAINT employee_role_contractno_fk FOREIGN KEY(ContractNo) REFERENCES Contract(ContractNo)
--);
