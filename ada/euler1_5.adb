-- Euler1 in Ada
with Ada.Integer_Text_IO,
     Ada.Numerics.Elementary_Functions;

procedure Euler1_5 is
	type Integers is array (Natural range <>) of Integer;

	function aRange(size : in Integer; ints : in out Integers) return Integers is
	begin
		if size > 0 then
			ints(size) := size;
			return aRange(size-1, ints);
		end if;
		return ints;
	end;

	function myRange(size : in Integer) return Integers is
		ints : Integers(1..size);
	begin
		return aRange(size, ints);
	end;

    function aMap(x : in Integer) return Integer is (if x mod 3 = 0 or x mod 5 = 0 then x else 0);

	function myMap(

begin
	Ada.Integer_Text_IO.Put (Integer( Euler(999) ));
end Euler1_5;
