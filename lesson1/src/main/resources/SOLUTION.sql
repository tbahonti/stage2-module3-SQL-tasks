CREATE DATABASE "University"
CREATE TABLE Student ("id" BIGINT PRIMARY KEY, "name" VARCHAR NOT NULL, "birthday_date" DATE, "group" INT);
CREATE TABLE Subject ("id" BIGINT PRIMARY KEY, "name" VARCHAR NOT NULL, "description" VARCHAR, "grade" INT);
CREATE TABLE Payment_type ("id" BIGINT PRIMARY KEY, "name" VARCHAR NOT NULL);
CREATE TABLE Payment ("id" BIGINT PRIMARY KEY, "type_id" BIGINT REFERENCES Payment_type(id), "amount" DECIMAL, "student_id" BIGINT REFERENCES Student(id), "payment_date" TIMESTAMP);
CREATE TABLE MARK ("id" BIGINT PRIMARY KEY, "student_id" BIGINT REFERENCES Student(id), "subject_id" BIGINT REFERENCES Subject (id), "mark" INT);
