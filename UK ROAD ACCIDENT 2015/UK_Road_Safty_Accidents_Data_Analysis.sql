#####----UK ROAD ACCIDENTS 2015----#####

# Q1: Evaluate the median severity value of accidents caused by various Motorcycles.

select vt.label as Motorcycle_types, avg(a.Accident_Severity) as Median from vehicles_2015 v
left join accidents_2015 a 
on a.Accident_Index = v.Accident_Index
left join vehicle_types vt
on v.vehicle_Type = vt.`code`
where vt.label LIKE '%Motorcycle%'
group by 1 order by 2;
---------------------------------------------------------
# Q2. Evaluate Accident Severity and Total Accidents per Vehicle Type

select vt.label as Vehicle_types, a.Accident_Severity, count(a.Accident_Index) as Total_Accidents from accidents_2015 a 
left join vehicles_2015 v 
on a.Accident_Index = v.Accident_Index
left join vehicle_types vt
on v.vehicle_Type = vt.`code`
group by 1 order by 3;
---------------------------------------------------------
# Q3:  Calculate the Average Severity by vehicle type.
  
select vt.label as Vehicle_types, avg(a.Accident_Severity) as Average_Severity from accidents_2015 a 
left join vehicles_2015 v 
on a.Accident_Index = v.Accident_Index
left join vehicle_types vt
on v.vehicle_Type = vt.`code`
group by 1 order by 2;
------------------------------------------------------------------------------------------------------------
# Q4: Calculate the Average Severity and Total Accidents by Motorcycle.

select vt.label as Vehicle_types, avg(a.Accident_Severity) as Average_Severity, count(a.Accident_Index) as Total_Accidents from accidents_2015 a 
left join vehicles_2015 v 
on a.Accident_Index = v.Accident_Index
left join vehicle_types vt
on v.vehicle_Type = vt.`code`
where vt.label LIKE '%Motorcycle%'
group by 1 order by 3;

#--------------------------------------------------END-------------------------------#
