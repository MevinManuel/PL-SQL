DECLARE
    -- Declare variables for the salary components
    basic_salary NUMBER(10, 2);
    da NUMBER(10, 2);
    hra NUMBER(10, 2);
    pf_deduction NUMBER(10, 2);
    gross_salary NUMBER(10, 2);
BEGIN
    -- Initialize the basic salary
    basic_salary := 50000;  

    -- Calculate DA, HRA, and PF deduction
    da := basic_salary * 0.40;  
    hra := basic_salary * 0.20;  
    pf_deduction := basic_salary * 0.12;  

    -- Calculate gross salary
    gross_salary := basic_salary + da + hra - pf_deduction;

    -- Output the calculated values
    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || basic_salary);
    DBMS_OUTPUT.PUT_LINE('DA (40%): ' || da);
    DBMS_OUTPUT.PUT_LINE('HRA (20%): ' || hra);
    DBMS_OUTPUT.PUT_LINE('PF Deduction (12%): ' || pf_deduction);
    DBMS_OUTPUT.PUT_LINE('Gross Salary: ' || gross_salary);
END;
/
