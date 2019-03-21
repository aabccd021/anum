x1 = 5;
x2 = 0;
y2 = 6;
L1 = 3;
L2 = 3 * sqrt(2);
L3 = 3;
gamma = pi / 4;
p1 = 5;
p2 = 0;
p3 = 3;

for p20 = 1 : 0.1 : 20
  p2 = p20;
  theta_list = [];
  
  x0 = -pi:0.05:pi;
  [y0, N1, N2, D] = f_soal_6(x0, p2);
  for i = 1 : length(y0) - 1
    if sign(y0(i)) != sign(y0(i+1))
      theta = bisection_p2(@f_soal_6, p2, x0(i), x0(i+1), 0.00000000005);
      theta_list = [theta_list; theta];
      [f, N1, N2, D] = f_soal_6(theta, p2);
    endif
  endfor
  if length(theta_list) == 2
    break;
  endif
endfor

printf("Nilai p2 yang memiliki tepat 2 pose = %f\n", p2);
for i = 1 : length(theta_list)
  printf("Theta %d = %f\n", i, theta_list(i));
endfor
