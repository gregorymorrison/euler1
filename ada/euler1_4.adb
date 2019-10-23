-- Euler1 in Ada
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Euler1_4 is
    type Integers is array (Natural range <>) of Integer;

    function myRange(size : in Integer) return Integers is
        ints : Integers(1..size);
    begin
        for i in 1..size loop
            ints(i) := i;
        end loop;
        return ints;
    end;
    
    function Euler(ints : in Integers) return Integer is
        pivot : Integer;
        pivotval : Integer;
        pre : Integer := 0;
        post : Integer := 0;
    begin
        if ints'Length = 0 then 
            return 0;
        end if;
       
        pivot := ints((ints'Last-ints'First) / 2 + ints'First);
        if pivot = 0 then
            return 0;
        end if;
    
        pivotval := ints(pivot);
        if pivotval mod 3 > 0 and pivotval mod 5 > 0 then
            pivotval := 0;
        end if;

        if ints'First < pivot then
            pre := Euler( ints(ints'First..pivot-1) );
        end if;

        if pivot < ints'Last then
            post := Euler( ints(pivot+1..ints'Last) );
        end if;

        return pre + pivotval + post;
    end Euler;

    function Euler1(size : in Integer) return Integer is
    begin
        return Euler( myRange(size));
    end Euler1;

begin
    Put(Integer ( Euler1(999) ));
end Euler1_4;
