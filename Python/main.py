year = input("Please input a year, and I'll check is that a leap year!!!")
if year % 4 == 0:    #we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
	if year % 100 != 0:
    	print(year + " is a leap year!");
elif year % 400 == 0:
    print(year + " is a leap year!");
else:
    print(year + " is not a leap year!");
    
