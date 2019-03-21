function plotting (u1, v1, u2, v2, u3, v3, x1, x2, y2)
    plot ([u1 u2 u3 u1], [v1 v2 v3 v1], 'r')
    hold on
    plot ([0 x1 x2], [0 0 y2], 'bo')
    hold off
endfunction

plotting(21, 34, 70, 88, 12, 14, 40, 89, 90)