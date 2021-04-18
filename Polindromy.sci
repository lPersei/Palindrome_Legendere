//funkcja do tworzenia wielomianów Legendre`a P(n)
function [Pxi] = legendreP(n,var)
if n == 0 then
    wielomian = [1]; //dla n=0 wielomian ma postać '1'
elseif n == 1 then
    wielomian=[0,1]; //dla n=0 wielomian ma postać 'x'
else
    if modulo(n,2)==0 then
        M=n/2
    else
        M=(n-1)/2
    end;
    wielomian=zeros(1,M+1);//tworzy macierz z zerami dla funkcji poly  
    for m=0:M
        k = n -2* m ;   //gamma dla faktorialu z definicji P(n)
        wielomian(k+1)=(-1)^m*gamma(2*n-2*m+1)/(2^n*gamma(m+1)*gamma(n-m+1)*gamma(n-2*m+1));
    end;
end;
Pxi = poly(wielomian,var,'coeff'); //gotowy wielomian P(n) "polindroma "wielomian" Legendre`a"
endfunction
