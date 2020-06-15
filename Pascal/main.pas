var
	year: longint;
begin
    writeln('Hello From Pascal!!!');
    read(year);
    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    if year % 4 == 0 && year % 100 != 0 then 
    	writeln(year + ' is a leap year!');
    else if year % 400 == 0
        writeln(year + ' is a leap year!');
    else
        writeln(year + ' is not a leap year!');
end.
    
