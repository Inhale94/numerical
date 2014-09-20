parameter(n = 100, m = 10)
dimension x(n*m), y(n*m), d(n*m), p(n*m)
open (10, FILE='lagrange3.dat')
open (20, FILE='lagrange33.dat')
open (30, FILE='lagrange333.dat')
a=-5.0
b=5.0
h=(b-a)/(m*n)


do i=1,m*n
  x(i)=a+(i-1)*h
  y(i)=sin(x(i))
  d(i)=(sin(x(i)+h))-sin(x(i))/h

enddo
close(10)

do i=2, m*n-1
   p(i)=(y(i+1)-y(i-1))/(2*h)
write (20,*) x(i), p(i)
enddo
close(20)

do i=1, m*n
    x(i)=a+(i-1)*h
    y(i)=sin(x(i))
write (30,*) x(i), y(i)
enddo
close(30)


end
