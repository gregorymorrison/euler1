-- Euler1 in Ada
with Ada.Integer_Text_IO;

procedure Euler is

    function Euler1(size : in Integer) return Integer is
        result: Integer;
    begin
        result := 0;
        for i in 1..size-1 loop
            if i mod 3 = 0 or i mod 5 = 0 then
                result := result + i;
            end if;
        end loop;
        return result;
    end Euler1;

begin
    Ada.Integer_Text_IO.Put (Integer( Euler1(1000) ));
end Euler;