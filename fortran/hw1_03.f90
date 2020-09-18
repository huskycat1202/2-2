program cosx
    real*8 x,ans,cosin
    x=0.5
    ans=int(cosin(x)*(10**7))
    ans=ans/10000000
    write(*,"(F9.7)") ans
end program cosx

real*8 function facto(x)
    integer x,y 
    real*8 sum
    sum=1
    y=x
    do while(y>0)
        sum=sum*y
        y=y-1
    end do
    facto=sum
end function facto

integer function check(x)
    real*8 x
    check=mod(floor(x*1000000),10)
end function check

real*8 function cosin(x)
    real*8 x,sum,facto,prev
    integer now, pow, check
    sum=1
    now=0
    prev=0
    pow=2
    do
        if(now==0) then
            prev=sum
            now=1
            sum=sum-((x**pow)/facto(pow))
        else
            prev=sum
            now=0
            sum=sum+((x**pow)/facto(pow))
        end if
        pow = pow+2
        if(prev/=1 .and. check(prev)==check(sum)) exit
    end do
    cosin=sum
end function cosin