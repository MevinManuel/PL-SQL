 DECLARE
   n number(3);
   s number(3):=0;
   t number(3);
 BEGIN
   n:=&n;
   t:=n;
       while t>0 loop
         s:=s+power((t mod 10),3);
         t:=trunc(t/10);
       end loop;
  
       if(s=n) then
         dbms_output.put_line('The Given Number ' || n || ' is an Armstrong Number');
       else
         dbms_output.put_line('The Given Number ' || n || ' is Not an Armstrong Number');
       end if;
 END;
/
