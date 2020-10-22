program palineprime
    integer len,i,j,flag, num(100), list(10000)
    do i=1,10000
        list(i)=0
    end do

    do i=2,10000
        if(list(i)==0) then
            do j=i*2,10000,i
                list(j)=1
            end do
        end if
    end do

    do i=11,9999
        flag=0
        if(list(i)==1) then
            cycle
        end if
        len=0
        j=i
        do while (j>0)
            len=len+1
            num(len)=mod(j,10)
            j=j/10
        end do
        do j=1,len/2
            if(num(j)/=num(len-j+1)) then
                flag=1
            end if
        end do
        if(flag==0) then
            write(*,*) i
        end if
    end do
            
end program palineprime