program anorm
    real*8 A1norm, a(1000,1000)
    integer m,n,i,j
    write (*,*) 'write down m,n'
    read (*,*) m,n
    do i=1,m
        do j=1,n
            write (*,*) 'write down a(', i ,',',j,')'
            read (*,*) a(i,j)
        end do
    end do
    write(*,*) A1norm(A,M,N)
end program anorm

real*8 function A1norm(A,M,N)
    integer m,n,flag,i,j
    real*8 max,cnt,A(1000,1000)
    flag=0
    cnt=0
    do i=1,m
        do j=1,n
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