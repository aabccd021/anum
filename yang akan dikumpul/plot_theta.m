function [x0, y0] = plot_theta()
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

    x0 = -pi:0.05:pi;
    [y0, x, y] = f(x0);
    figure(1);
    plot(x0, y0 / 10**4); hold on;
    str = sprintf('Plot of f(\\theta) from -\\pi to \\pi');
    title(str);
    str = sprintf('p1=%.4f    p2=%.4f    p3=%.4f\n', p1, p2, p3);
    xlabel(str);
    str = sprintf("x 10^4");
    ylabel(str);
    grid on;
endfunction