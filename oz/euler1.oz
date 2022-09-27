% Euler1 in Oz

functor
import
    Application
    System

define
    fun {Euler1 N Acc}
        if N == 0 then Acc
        elseif N mod 3 == 0 then {Euler1 N-1 Acc+N}
        elseif N mod 5 == 0 then {Euler1 N-1 Acc+N}
        else {Euler1 N-1 Acc}
        end
    end

    {System.showInfo {Euler1 999 0}}

    {Application.exit 0}
end
