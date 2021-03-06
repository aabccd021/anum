function [out, N1, N2, D] = f_soal_4(theta)
  x1 = 5;
  x2 = 0;
  y2 = 6;
  L1 = 3;
  L2 = 3 * sqrt(2);
  L3 = 3;
  gamma = pi / 4;
  p1 = 5;
  p2 = 5;
  p3 = 3;
  
  A2 = L3 .* cos(theta) - x1;
  B2 = L3 .* sin(theta);
  A3 = L2 .* (cos(theta) .* cos(gamma) - sin(theta) .* sin(gamma)) - x2;
  B3 = L2 .* (cos(theta) .* sin(gamma) + sin(theta) .* cos(gamma)) - y2;
  N1 = B3.*(p2.*p2 - p1.*p1 - A2.*A2 - B2.*B2) - B2.*(p3.*p3 - p1.*p1 - A3.*A3 - B3.*B3);
  N2 = (-A3 .* (p2.*p2 - p1.*p1 - A2.*A2 - B2.*B2)) + (A2 .* (p3.*p3 - p1.*p1 - A3.*A3 - B3.*B3));
  D = 2.*(A2.*B3 - B2.*A3);
  out = N1.*N1 + N2.*N2 - (p1.*p1 .* D.*D);
endfunction