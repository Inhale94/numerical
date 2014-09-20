parameter(n = 100, m = 50)
real x(n*m), y(n*m), z(n*m)
open (10, FILE='lagrange1.dat')
open (20, FILE='lagrange11.dat')
a=-20.0
b=20.0
h=(b-a)/m
d=h/n

do i=1, m*n
    x(i)=a+(i-1)*h
    y(i)=exp(sin(x(i)))
write (20,*) x(i), y(i)
enddo


do i=1, m*n
  sum=0.0
    z(i)=a+(i-1)*d
    do j=1, m
      pr=1.0
        do k=1, m
            if(j.ne.k) then
                pr=pr*(z(i)-x(k))/(x(j)-x(k))
            endif
        enddo
        sum=sum+y(j)*pr
    enddo
    write (10,*) z(i), sum
enddo
close (10)

do i=1, m*n
    x(i)=a+(i-1)*d
    y(i)=exp(sin(x(i)))
write (20,*) x(i), y(i)
enddo
close(20)

end
