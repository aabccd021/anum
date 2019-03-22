function plot_poses()
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

    global x0;
    global y0;
    global theta_list;
    global f_list;
    global x_list;
    global y_list;

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
        title(str); hold off;
        
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
endfunction