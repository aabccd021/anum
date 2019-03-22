function soal_3()
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
    
    L1 = 2;
    L2 = sqrt(2);
    L3 = sqrt(2);
    x1 = 4;
    x2 = 0;
    y2 = 4;
    gamma = pi / 2;
    p1 = sqrt(5);
    p2 = sqrt(5);
    p3 = sqrt(5);
    
    global x0 = []
    global y0 = []
    global theta_list = []
    global f_list = []
    global x_list = []
    global y_list = []
    
    [x0, y0] = plot_theta();
    [theta_list, f_list, x_list, y_list] = find_theta(x0, y0);
    for i = 1 : length(theta_list)
        plot([theta_list(i)], [f_list(i)], 'o-r'); hold on;
    endfor
    hold off;
    plot_poses();
endfunction
