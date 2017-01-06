function [Y] = SumOfCornersFunction( h, a, L, n, j, k, c, x, t )
%This Helmholtz Matlab function uses parameters:
% h = height of kink above 0
% a = x displacement of kink
% L = length of string
% n = summation start integer
% j = Number of Fourier Terms
% k = Number of plucks
% c = speed of wave
% t = time

%   Performs the Fourier series Y(x) up to j number of terms. These Fourier
%   series occurs periodically after the first corner to represent the
%   simulation of playing a string with a bow. This function sums all of
%   the Y(x) terms to create the string's profile.



timestep = 1;
summation = 0;

for i = 0:1:k

    T = t - i*timestep;
    if T >= 0
        for n = 1:1:j
        
            summation = summation + ((1/n)^2)*sin( ((n)*pi*a)/L )*sin( (n)*pi*x /L )*cos( (n)*pi*c*T/L );

        end
    end

end

Y = (2*h/L)*((1/a)+1/(L-a))*(L/(pi))^2*summation;

