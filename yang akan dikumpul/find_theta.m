function [theta_list, f_list, x_list, y_list] = find_theta(x0, y0)
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

    theta_list = [];
    f_list = [];
    x_list = [];
    y_list = [];
    for i = 1 : length(y0) - 1
        if sign(y0(i)) != sign(y0(i+1))
            theta = secant_method(@f, x0(i), x0(i+1), 0.000000005);
            theta_list = [theta_list; theta];
            [ff, x, y] = f(theta);
            f_list = [f_list; ff];
            x_list = [x_list; x];
            y_list = [y_list; y];
        endif
    endfor
endfunction