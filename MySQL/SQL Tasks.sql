/* Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows: */

SELECT CITY, CHAR_LENGTH(CITY) FROM STATION
ORDER BY CHAR_LENGTH(CITY) ASC, CITY ASC
LIMIT 1;

SELECT CITY, CHAR_LENGTH(CITY) FROM STATION
ORDER BY CHAR_LENGTH(CITY) DESC, CITY DESC
LIMIT 1;


/* Дополните запрос из предыдущего задания, добавив ещё одно внутреннее соединение с таблицей Student.
Объедините по полям Student_in_class.student и Student.id и вместо идентификатора ученика выведите его имя (поле first_name).
*/

SELECT name, first_name FROM Class
INNER JOIN Student_in_class 
ON Class.id = Student_in_class.class  
INNER JOIN Student
ON Student_in_class.student = Student.id
