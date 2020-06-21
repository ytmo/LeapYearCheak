print("Please input a year, and I'll check is that a leap year!!!")
year = io.read('*n')
--we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
if (year % 4 == 0)
then
	if (year % 100 ~= 0)
    then
    	print(tostring(year) .. " is a leap year!")
	end
elseif (year % 400 == 0)
then
    print(tostring(year) .. " is a leap year!")
else
    print(tostring(year) .. " is not a leap year!")
end
    
