//obliczenie calki
//n - liczba węzłów
//w miejscu fn trzeba wpisac f1 dla 1ej funkcji(x^3+x^6), f2 dla drugiej
function [calka]=CNMGL(n,fn)
    if fn==f2 then
        a=-1; 
        b=1;
        p=legendreP(n,'x') //tworzenie polindromy "wielomianu"
        xr = roots(p); //pierwiastki wielomianu P(n)
        W = []; //To są Wi z formuły "wagi"
        for j = 1:n
            pd = derivat(p) //pochodna od Polindromy "wielomianu" p
            W =[W 2/((1-xr(j)^2)*(horner(pd,xr(j)))^2)]
        end
       tr=(((b-a)/2*xr)+((b+a)/2)); //wartosc X z f(X)
       s2=0;
       for i = 1:n
          s2=s2+((b-a)/2)*f2(tr(i))*W(i)//wartoźć całki dla F2
       end
       //disp(s2)
       calka=s2;
   else
       a=0; 
       b=1;
       p=legendreP(n,'x')

       xr = roots(p);
       W = [];

       for j = 1:n
          pd = derivat(p)
          W =[W 2/((1-xr(j)^2)*(horner(pd,xr(j)))^2)]
       end

       tr=(((b-a)/2*xr)+((b+a)/2));
       s1=0;
       for i = 1:n
           s1=s1+((b-a)/2)*(f(tr(i))+f1(tr(i)))*W(i) //wartoźć całki dla F1
       end
       calka=s1
       //disp(s1);
    end
endfunction



