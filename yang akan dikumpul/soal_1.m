function soal_1()
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
    
    printf("Hasil f(theta) untuk theta = pi/4 = %f\n", f(pi/4));
    printf("Hasil f(theta) untuk theta = - pi/4 = %f\n", f(-pi/4));
endfunction
