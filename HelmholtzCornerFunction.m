function [Y] = HelmholtzCornerFunction( h, a, l, n, j, c, x, t )
%This Helmholtz Matlab function uses parameters:
% h = y displacement of kink
% a = x displacement of kink
% l = length of string
% n = intial Fourier summation term
% j = final Fourier summation term
% c = speed of wave
% x = x value
% t = time

%   Using these parameters, this function calculates the Fourier series of
%   the Helmholtz corner with a progression through time. 

    summation = 0;

    for n = 1:1:j
        summation = summation + ((1/n)^2)*sin( ((n)*pi*a)/l )*sin( (n)*pi*x /l )*cos( (n)*pi*c*t/l );

    end

    Y = (2*h/l)*((1/a)+1/(l-a))*(l/(pi))^2*summation;
    
end


