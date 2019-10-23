-- Euler1 in Ada
with Ada.Integer_Text_IO;

procedure Euler1_2 is

    function mySum(n : in Integer; size : in Integer) return Integer is
    begin
        return n * (((size/n) **2 + (size/n)) / 2);
    end mySum;

    function Euler(size : in Integer) return Integer is
    begin
	return mySum(3,size) + mySum(5,size) - mySum(15,size);
    end Euler;

begin
    Ada.Integer_Text_IO.Put (Integer( Euler(999) ));
end Euler1_2;
