program anorm
    real*8 A1norm, a(2,2)
    integer m,i,j
    do i=1,2
        do j=1,2
            a(i,j)=i+j
        end do
    end do
    m=2
    write(*,*) A1norm(A,M)

end program anorm

real*8 function A1norm(A,M)
    integer m,flag,i,j
    real*8 max,cnt, A(M,M)
    flag=0
    cnt=0
    do i=1,m
        do j=1,m
            cnt=cnt+A(i,j)
        end do
        if (flag==0) then
            max=cnt
            flag=1 
        else
            if (max<cnt) then
                max=cnt 
            end if
        end if
        cnt=0
    end do
    A1norm=max 
end function