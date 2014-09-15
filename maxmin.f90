x=5
y=5
min=0
max=0

do while (1+x.gt.1)
  x=x/2
enddo

if (1+x.eq.1) then
  do while (x.lt.1)
    x=x*10
    min=min + 1
  enddo
endif
write(*,*) 'min=', -min

do while (1+y.gt.y)
  y=y*2
enddo

if (1+y.eq.y) then
  do while (y.gt.1)
    y=y/10
    max=max + 1
  enddo
endif
write(*,*) 'max=', max
end
