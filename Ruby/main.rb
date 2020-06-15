puts "Please input a year, and I'll check is that a leap year!!! \n"
year = readline()
#we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
if year % 4 == 0 and year % 100 != 0   
    puts "#{year+" is a leap year! \n"}" 
elsif year % 400 == 0
    puts "#{year+" is a leap year! \n"}" 
else
    puts "#{year+" is not a leap year! \n"}" 
end
