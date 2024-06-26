--admin Table

CREATE TABLE admin (
    id INT AUTO_INCREMENT NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

--student Table

CREATE TABLE student (
    id INT AUTO_INCREMENT NOT NULL,
    addstatus VARCHAR(255) NOT NULL,
    adddate VARCHAR(255) NOT NULL,
    studname VARCHAR(255) NOT NULL,
    studmobile VARCHAR(255) NOT NULL,
    dob VARCHAR(255) NOT NULL,
    age VARCHAR(255) NOT NULL,
    gender VARCHAR(255) NOT NULL,
    blood VARCHAR(255) NOT NULL,
    adhar VARCHAR(255) NOT NULL,
    religion VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    caste VARCHAR(255) NOT NULL,
    village VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    post VARCHAR(255) NOT NULL,
    tehsil VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    pin VARCHAR(255) NOT NULL,
    ispermanent VARCHAR(255) NOT NULL,
    pvillage VARCHAR(255),
    pcity VARCHAR(255),
    ppost VARCHAR(255),
    ptehsil VARCHAR(255),
    pstate VARCHAR(255),
    ppin VARCHAR(255),
    studtype VARCHAR(255) NOT NULL,
    projectname VARCHAR(255),
    yearid INT,
    applicationnum VARCHAR(255) NOT NULL,
    schclgid INT,
    mediumid INT,
    classid INT,
    fathername VARCHAR(255),
    fathermobile VARCHAR(255),
    fatherwhatsapp VARCHAR(255),
    mothername VARCHAR(255),
    mothermobile VARCHAR(255),
    motherwhatsapp VARCHAR(255),
    totalfees VARCHAR(255),
    concession VARCHAR(255),
    cfess VARCHAR(255),
    aftercfees VARCHAR(255),
    studphoto VARCHAR(255),
    fatherphoto VARCHAR(255),
    motherphoto VARCHAR(255),
    gname VARCHAR(255),
    relation VARCHAR(255),
    gcontact VARCHAR(255),
    gaddress VARCHAR(255),
    gphoto VARCHAR(255),
    gname2 VARCHAR(255),
    relation2 VARCHAR(255),
    gcontact2 VARCHAR(255),
    gaddress2 VARCHAR(255),
    gphoto2 VARCHAR(255),
    remark VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (yearid) REFERENCES year(id),
    FOREIGN KEY (schclgid) REFERENCES college(id),
    FOREIGN KEY (mediumid) REFERENCES medium(id),
    FOREIGN KEY (classid) REFERENCES addclass(id)
);


--addclass Table

CREATE TABLE addclass (
    id INT AUTO_INCREMENT NOT NULL,
    classname VARCHAR(255) NOT NULL,
    date VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--feesdetails Table

CREATE TABLE feesdetails (
    id INT AUTO_INCREMENT NOT NULL,
    studid INT NOT NULL,
    feesdate VARCHAR(255) NOT NULL,
    receipt_no VARCHAR(255) NOT NULL,
    fees VARCHAR(255) NOT NULL,
    remainfees VARCHAR(255) NOT NULL,
    remark VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (studid) REFERENCES student(id)
);

--seller Table

CREATE TABLE seller (
    id INT AUTO_INCREMENT NOT NULL,
    sname VARCHAR(255) NOT NULL,
    sdate VARCHAR(255) NOT NULL,
    gtotal VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--addproject Table

CREATE TABLE addproject (
    id INT AUTO_INCREMENT NOT NULL,
    projectname VARCHAR(255) NOT NULL,
    date VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--addstock Table

CREATE TABLE addstock (
    id INT AUTO_INCREMENT NOT NULL,
    stationary_name VARCHAR(255) NOT NULL,
    dateadded VARCHAR(255) NOT NULL,
    seller_name VARCHAR(255) NOT NULL,
    billno VARCHAR(255) NOT NULL,
    qty VARCHAR(255) NOT NULL,
    price VARCHAR(255) NOT NULL,
    tprice VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--assignto Table

CREATE TABLE assignto (
    id INT AUTO_INCREMENT NOT NULL,
    assignedTo VARCHAR(255) NOT NULL,
    date VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--year Table

CREATE TABLE year (
    id INT AUTO_INCREMENT NOT NULL,
    year VARCHAR(255) NOT NULL,
    date VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--religion Table

CREATE TABLE religion (
    id INT AUTO_INCREMENT NOT NULL,
    religionname VARCHAR(255) NOT NULL,
    rdate VARCHAR(255) NOT NULL,
    rstatus VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--medium Table
CREATE TABLE medium (
    id INT AUTO_INCREMENT NOT NULL,
    medium_name VARCHAR(255) NOT NULL,
    m_date VARCHAR(255) NOT NULL,
    m_status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--healthcard Table
CREATE TABLE healthcard (
    id INT AUTO_INCREMENT NOT NULL,
    studid INT NOT NULL,
    projectid INT NOT NULL,
    blood VARCHAR(255) NOT NULL,
    weight VARCHAR(255) NOT NULL,
    height VARCHAR(255) NOT NULL,
    bmi VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (studid) REFERENCES student(id)
);


--college Table
CREATE TABLE college (
    id INT AUTO_INCREMENT NOT NULL,
    cname VARCHAR(255) NOT NULL,
    cdate VARCHAR(255) NOT NULL,
    cstatus VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


--mess stock table
CREATE TABLE stock (
    id INT AUTO_INCREMENT NOT NULL,
    pname VARCHAR(255) NOT NULL,
    pquantity VARCHAR(255) NOT NULL,
    price VARCHAR(255) NOT NULL,
    total VARCHAR(255) NOT NULL,
    sellerid INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (sellerid) REFERENCES seller(id)
);


--healthcare table

CREATE TABLE healthcare (
    id INT AUTO_INCREMENT NOT NULL,
    hid INT NOT NULL,
    diagnosis VARCHAR(255) NOT NULL,
    treatment VARCHAR(255),
    advice VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (hid) REFERENCES healthcard(id)
);

ALTER TABLE student
ADD COLUMN cancalreg VARCHAR(255);

ALTER TABLE healthcard
ADD CONSTRAINT fk_projectid
FOREIGN KEY (projectid) REFERENCES addproject(id);


