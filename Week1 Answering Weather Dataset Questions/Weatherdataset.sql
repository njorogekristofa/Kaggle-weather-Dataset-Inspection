/* Find all records where the weather was exactly clear.*/
SELECT * FROM "Weather_Data" 
WHERE "Weather"='Clear' /*displays all the records */

/*Find the number of times the wind speed was exactly 4 km/hr. */
SELECT count("Wind_Speed_km/h") from "Weather_Data"
WHERE "Wind_Speed_km/h" = 4 /* gives 474*/

/*Check if there are any NULL values present in the dataset.*/
SELECT COUNT(*) FROM "Weather_Data"
WHERE ("Date/Time" is NULL) or 
      ("Temp_C" is NULL) OR 
      ("Dew_Point_Temp_C" is NULL) OR
      ("Rel_Hum_%" is NULL) or 
      ("Wind_Speed_km/h" IS NULL) OR
      ("Visibility_km" IS NULL) OR
      ("Press_kPa" IS NULL) OR
      ("Weather" IS NULL)
 
 
 /*Rename the column "Weather" to "Weather_Condition."*/
 ALTER TABLE "Weather_Data"
 RENAME "Weather" TO "Weather_condition" /*column name changed*/
 
 
 /*What is the mean visibility of the dataset?*/
 SELECT AVG("Visibility_km") FROM "Weather_Data" /* the mean is 27.66444672131151*/
      
      
/*Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km*/
SELECT count("Wind_Speed_km/h") from "Weather_Data"
WHERE "Wind_Speed_km/h" > 24 AND "Visibility_km"=25 /*The number of records is 308*/


/*What is the mean value of each column for each weather condition?*/
SELECT AVG("Temp_C") as mean_temp,
       AVG("Dew_Point_Temp_C") as mean_dewpoint,
       AVG("Rel_Hum_%") as mean_humiditiy,
       AVG("Wind_Speed_km/h") as mean_speed,
       AVG("Press_kPa") as mean_press,
       AVG("Visibility_km") as mean_visibility
from "Weather_Data"  /*displays all the means*/


/*Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40*/
SELECT * FROM "Weather_Data" 
WHERE "Weather_condition"='Clear' AND "Rel_Hum_%">50 AND "Visibility_km">40 /*displays all columns*/


/*Find the number of weather conditions that include snow*/
SELECT COUNT("Weather_condition") from "Weather_Data"
WHERE "Weather_condition" LIKE '%Snow%' /*583 records found*/