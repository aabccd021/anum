x1 = 5;
x2 = 0;
y2 = 6;
L1 = 3;
L2 = 3 * sqrt(2);
L3 = 3;
gamma = pi / 4;
p1 = 5;
p2 = 7;
p3 = 3;

# Membuat plot f(theta)
x0 = -pi:0.05:pi;
[y0, N1, N2, D] = f_soal_5(x0);
figure(1);
plot(x0, y0); hold on;
str = sprintf('Plot of f(\\theta) from -\\pi to \\pi');
title(str);
str = sprintf('p1=%.4f    p2=%.4f    p3=%.4f\n', p1, p2, p3);
xlabel(str);
grid on;

# Mencari theta yang memenuhi
theta_list = [];
f_list = [];
x_list = [];
y_list = [];
for i = 1 : length(y0) - 1
  if sign(y0(i)) != sign(y0(i+1))
    theta = bisection(@f_soal_5, x0(i), x0(i+1), 0.00000000005);
    theta_list = [theta_list; theta];
    [f, N1, N2, D] = f_soal_5(theta);
    f_list = [f_list; f];
    x_list = [x_list; N1/D];
    y_list = [y_list; N2/D];
  endif
endfor

# Menunjukkan lokasi theta di plot f(theta)
for i = 1 : length(theta_list)
  plot([theta_list(i)], [f_list(i)], 'o-r'); hold on;
endfor
hold off;

# Membuat plot pose
for i = 1 : length(x_list)
  xp0 = x_list(i);
  yp0 = y_list(i);
  
  AA2 = L3 .* cos(theta_list(i));
  BB2 = L3 .* sin(theta_list(i));
  AA3 = L2 .* (cos(theta_list(i)) .* cos(gamma) - sin(theta_list(i)) .* sin(gamma));
  BB3 = L2 .* (cos(theta_list(i)) .* sin(gamma) + sin(theta_list(i)) .* cos(gamma));
  
  xp1 = xp0 + AA2;
  yp1 = yp0 + BB2;
  xp2 = xp0 + AA3;
  yp2 = yp0 + BB3;
  figure(i+1);
  plot_pose(xp0, yp0, xp1, yp1, xp2, yp2, x1, x2, y2); hold on;
  str = sprintf('\\theta = %.4f', theta_list(i));
  title(str); hold off;pp1 = sqrt(x_list(i)**2 + y_list(i)**2);
  printf("Our calculated p1 = %f\n", pp1)
  
  # Memastikan bahwa p1, p2, dan p3 sesuai dengan hasil penghitungan  
  A2 = AA2 - x1;
  B2 = BB2;
  A3 = AA3 - x2;
  B3 = BB3 - y2;
  
  printf("Pose %d\n", i)
  printf("Given p1 = %f\n", p1)
  pp1 = sqrt(x_list(i)**2 + y_list(i)**2);
  printf("Our calculated p1 = %f\n", pp1)
  printf("Given p2 = %f\n", p2)
  pp2 = sqrt(pp1**2 + 2*A2*x_list(i) + 2*B2*y_list(i) + A2**2 + B2**2);
  printf("Our calculated p1 = %f\n", pp2)
  printf("Given p3 = %f\n", p3)
  pp3 = sqrt(pp1**2 + 2*A3*x_list(i) + 2*B3*y_list(i) + A3**2 + B3**2);
  printf("Our calculated p1 = %f\n", pp3)
  printf("========================\n")
endfor
