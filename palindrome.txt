declare
    n number; 
    m number; 
    temp number:=0; 
    rem number; 
   
begin
    n:=&n;
    m:=n; 
      
    while n>0 
    loop 
        rem:=mod(n,10); 
        temp:=(temp*10)+rem; 
        n:=trunc(n/10); 
    end loop;
      
    if m = temp
    then
        dbms_output.put_line('The Given Number  is palindrome'); 
    else
        dbms_output.put_line('The Given Number is not palindrome'); 
    end if; 
end; 
/ 

