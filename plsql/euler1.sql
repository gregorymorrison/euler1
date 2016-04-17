-- Euler1 in PL/SQL

declare

    function Euler1 (n in number) return number is
        result number(10);
    begin
        result := 0;

        for i in 1 .. n loop
            if mod(i,3)=0 or mod(i,5)=0 then
                result := result + i;
            end if;
        end loop;
        return result;
    end Euler1;

begin
    dbms_output.put_line(Euler1(999));
end;