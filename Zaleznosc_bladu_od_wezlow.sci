//skrypt do wyznaczania błedów całkowania na funkcjach F1 i F2
//następnie -> przedstawienia graficznie zależności liczby węzłow do wysokości blądu
//zródlo -> cwiczenia Nr 3
clf
for k=1:30 do
    x(k)=k
    calka1(k)=CNMGL(k,ff)
    calka2(k)=CNMGL(k,f2)
end
blad1=abs(calka1-C1)
blad2=abs(calka2-C2)

plot2d('ll',x,[blad1,blad2])
xtitle('Hryhorii Shynkovskyi')

[a1,b1]=mnkw(log(ff),log(blad1))
[a2,b2]=mnkw(log(f2),log(blad2))

//rzad1=abs(a1)
//rzad2=abs(a2)

//disp(rzad1)
//disp(rzad2)

