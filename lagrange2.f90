parameter(n = 10, m = 3)
real x(n*m), y(n*m), z(n*m)
open (10, FILE='lagrange2.dat')
open (20, FILE='lagrange22.dat')
a=-10.0
b=10.0
h=(b-a)/m
d=h/n

do i=1, m*n
    x(i)=a+(i-1)*h
    y(i)=sin(x(i))

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
        hu=0
        do l=1,m
        hu=hu+pr/(z(i)-x(l))
      enddo
        sum=sum+y(j)*hu
    enddo
    write (10,*) z(i), sum
enddo
close (10)

do i=1, m*n
    x(i)=a+(i-1)*d
    y(i)=sin(x(i))
write (20,*) x(i), y(i)
enddo
close(20)

end
