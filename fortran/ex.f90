program cosx
    real*8 coss, x, ans
    x = 0.5
    ans=int(coss(x)*(10**7))
    ans=ans/10000000
    write(*,"(F9.7)") ans
end program cosx

real*8 function fac(x)
    integer:: x,xx 
    real*8:: total
    total = 1
    xx = x
    do while(xx>0)
        total = total * xx
        xx = xx-1
    end do
    fac = total
end function fac

integer function check(x)
    real*8:: x
    check = mod(FLOOR(x*1000000),10)
end function check

real*8 function coss(x)
    real*8:: x, total, fac, prev
    integer:: now, zegop, check
    total = 1
    now = 0
    prev = 0
    zegop = 2
    do
        if(now==0) then
            now = 1
            prev = total
            total = total - ((x**zegop)/fac(zegop))
        else
            now = 0
            prev = total
            total = total + ((x**zegop)/fac(zegop))
        end if

        if(prev/=1 .and. check(prev)==check(total)) exit

        zegop = zegop+2
    end do
    coss = total
end function coss