! Euler1 in Fortran90
 
program euler1
    integer :: euler

    print*, euler(999)
end

function euler(size)
    integer euler, size
    euler = 0

    do i = 0, size
        if (modulo(i,3)==0 .or. modulo(i,5)==0) then
            euler = euler + i
        end if
    end do
end
