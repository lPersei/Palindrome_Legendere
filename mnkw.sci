// Funkcja sluzy do obliczania parametrów a i b prostej najmniejszych kwadratów 
// dla zbioru punktów (xi,yi), których wartosci sa zadane przez wektory x oraz y.

function [a,b] = mnkw(x,y)
    n = length(x); //liczba punktow 
    X2 = sum(x.*x);
    X = sum(x);
    XY = sum(x.*y);
    Y = sum(y);
    delta = (n*X2-X*X);
    a = (n*XY-X*Y)/delta;  // wspolczynnik kierunkowy prostej
    b = (X2*Y-XY*X)/delta; // wyraz wolny
endfunction
