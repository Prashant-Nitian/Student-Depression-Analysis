CREATE DATABASE Tableau_Project_1;
USE Tableau_Project_1;
SELECT * FROM dataset;

-- Gender Column Cleaning
SELECT Gender,Count(Gender) FROM dataset GROUP BY Gender;

UPDATE dataset SET Gender = 'M' WHERE Gender = 'Male';
UPDATE dataset SET Gender = 'F' WHERE Gender = 'Female';

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM dataset WHERE Gender IS NULL;
SELECT * FROM dataset WHERE Gender = '' OR ' ' ;

-- Age Column Cleaning

SELECT Age,Count(Age) as cnt FROM dataset GROUP BY Age order by Age desc;

ALTER TABLE dataset ADD Age_Group varchar(10);

UPDATE dataset SET Age_Group = 
IF(Age>=18 AND Age<=24,'A1',IF(Age>=25 AND Age<=30,'A2','A3'));

SELECT Age_Group,count(Age_Group) FROM dataset GROUP BY AGE_Group;

DESC dataset;

SELECT 
    `Academic Pressure` AS academic_pressure,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Academic Pressure`;

SELECT 
    `Study Satisfaction` AS Study_Satisfaction,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Study Satisfaction`;

SELECT 
    `Sleep Duration` AS Sleep_Duration,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Sleep Duration`;


SELECT 
    `Dietary Habits` AS Dietary_Habits,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Dietary Habits`;


SELECT 
    `Have you ever had suicidal thoughts ?` AS Have_you_ever_had_suicidal_thoughts,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Have you ever had suicidal thoughts ?`;

SELECT 
    `Study Hours` AS Study_Hours,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Study Hours`;

SELECT 
    `Financial Stress` AS Financial_Stress,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Financial Stress`;

SELECT 
    `Family History of Mental Illness`,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Family History of Mental Illness`;

SELECT 
    `Depression` AS academic_pressure,
    COUNT(*) AS total_count
FROM dataset
GROUP BY `Depression`;


ALTER TABLE dataset ADD COLUMN Index_Column INT PRIMARY KEY AUTO_INCREMENT;
