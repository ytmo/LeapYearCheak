package main
import "fmt"
func main() {
		var year int
        fmt.Println("Please input a year, and I'll check is that a leap year!!!")
        fmt.Scanf("%d",&year)
        //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
        if year % 4 == 0 && year % 100 != 0 { 
        	fmt.Print(year)
            fmt.Println(" is a leap year!")
    	} else if year % 400 == 0 {
    	    fmt.Print(year)
            fmt.Println(" is a leap year!")
    	} else {
    	    fmt.Print(year)
            fmt.Println(" is not a leap year!")
    	}
    }
    
