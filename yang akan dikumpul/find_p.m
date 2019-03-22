function find_p(desired_num_of_theta)
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
    
    global theta_list;
    global x_list;
    global y_list;
    
    if p1 == "None"
        p1 = 1:10;
    endif
    if p2 == "None"
        p2 = 1:10;
    endif
    if p3 == "None"
        p3 = 1:10;
    endif

    x0 = -pi:0.05:pi;
    for i = p1
        for j = p2
            for k = p3
                theta_list = [];
                x_list = [];
                y_list = [];
                p1 = i;
                p2 = j;
                p3 = k;

                [y0, x, y] = f(x0);
                for n = 1 : length(y0) - 1
                    if sign(y0(n)) != sign(y0(n+1))
                        theta = secant_method(@f, x0(n), x0(n+1), 0.00000000005);
                        theta_list = [theta_list; theta];
                        [ff, x, y] = f(theta);
                        x_list = [x_list; x];
                        y_list = [y_list; y];
                    endif
                endfor
                
                if length(theta_list) == desired_num_of_theta
                    return
                endif
            endfor
        endfor
    endfor
endfunction