var
	year: longint;
begin
    writeln('Please input a year, and I will check is that a leap year!!!');
    read(year);
    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    if year mod 4 = 0 then 
    	if year mod 100 <> 0 then 
        	write(year);
        	writeln(' is a leap year!');
        end.
    else if year mod 400 = 0
        writeln(year + ' is a leap year!');
    else
        writeln(year + ' is not a leap year!');
end.
    
