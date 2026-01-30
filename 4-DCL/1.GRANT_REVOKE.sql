---- GRANT -> Permission data
--1️⃣ CREATE ROLE / USER
--2️⃣ CREATE TABLE
--3️⃣ GRANT permission
--4️⃣ REVOKE (if needed)


CREATE ROLE ram;
GRANT SELECT ON users TO ram;
REVOKE SELECT ON users FROM ram;

