function soal_6()
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
    
    L1 = 3;
    L2 = 3 * sqrt(2);
    L3 = 3;
    x1 = 5;
    x2 = 0;
    y2 = 6;
    gamma = pi / 4;
    p1 = 5;
    p2 = "None";
    p3 = 3;
    
    global x0;
    global y0;
    global theta_list;
    global f_list;
    global x_list;
    global y_list;

    x0 = [];
    y0 = [];
    theta_list = [];
    x_list = [];
    y_list = [];
    
    find_p(2);
    printf("p1 = %f, p2 = %f, p3 = %f\n", p1, p2, p3);
    printf("Nilai p2 yang memiliki tepat 2 pose = %f\n", p2);
    for i = 1 : length(theta_list)
        printf("Theta %d = %f\n", i, theta_list(i));
    endfor
    plot_poses();
endfunction