function [out, x, y] = f(theta)
    global L1;
    global L2;
    global L3;
    global x1;
    global x2;
    global y2;
    global gamma;
    global p1;
    global p2;
    global p3;

    A2 = L3 .* cos(theta) - x1;
    B2 = L3 .* sin(theta);
    A3 = L2 .* (cos(theta) .* cos(gamma) - sin(theta) .* sin(gamma)) - x2;
    B3 = L2 .* (cos(theta) .* sin(gamma) + sin(theta) .* cos(gamma)) - y2;
    N1 = B3.*(p2.*p2 - p1.*p1 - A2.*A2 - B2.*B2) - B2.*(p3.*p3 - p1.*p1 - A3.*A3 - B3.*B3);
    N2 = (-A3 .* (p2.*p2 - p1.*p1 - A2.*A2 - B2.*B2)) + (A2 .* (p3.*p3 - p1.*p1 - A3.*A3 - B3.*B3));
    D = 2.*(A2.*B3 - B2.*A3);
    out = N1.*N1 + N2.*N2 - (p1.*p1 .* D.*D);
    x = N1/D;
    y = N2/D;
endfunction