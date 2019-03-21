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

num_of_theta = [];
interval_list = [];
prev_idx = 1;
cur_num_theta = 0;
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
  num_of_theta = [num_of_theta; length(theta_list)];
  if length(theta_list) != cur_num_theta
    interval_list = [interval_list; [prev_idx p20 cur_num_theta]];
    prev_idx = p20;
    cur_num_theta = length(theta_list);
  endif
  
  if p20 == 20
    interval_list = [interval_list; [prev_idx p20 cur_num_theta]];
  endif
endfor

# Membuat plot f(x) = Jumlah theta yang mungkin untuk p2 = x
plot(1:0.1:20, num_of_theta);
grid on;

interval_list

