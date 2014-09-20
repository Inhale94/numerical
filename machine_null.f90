real*8 x
x=1

do while (1+x.gt.1)
  x=x/2
  if (1+x.eq.1) then
   write(*,*) 'x=', x
  endif
enddo
end
