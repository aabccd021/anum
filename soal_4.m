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

# Membuat plot f(theta)
x0 = -pi:0.05:pi;
[y0, N1, N2, D] = f_soal_4(x0);
plot(x0, y0); hold on;
str = sprintf('Plot of f(\\theta) from -\\pi to \\pi');
title(str);
str = sprintf('p1=%.4f    p2=%.4f    p3=%.4f\n', p1, p2, p3);
xlabel(str);
grid on;

# Mencari theta yang memenuhi
theta_list = []
f_list = []
x_list = []
y_list = []
for i = 1 : length(y0) - 1
  if sign(y0(i)) != sign(y0(i+1))
    theta = bisection(@f_soal_4, x0(i), x0(i+1), 0.00000000005)
    theta_list = [theta_list; theta]
    [f, N1, N2, D] = f_soal_4(theta);
    f_list = [f_list; f]
    x_list = [x_list; N1/D]
    y_list = [y_list; N2/D]
  endif
endfor

# Menunjukkan lokasi theta di plot f(theta)
for i = 1 : length(theta_list)
  plot([theta_list(i)], [f_list(i)], 'o-r'); hold on;
endfor
hold off;

# Membuat plot pose