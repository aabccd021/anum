function plot_pose (u1, v1, u2, v2, u3, v3, x1, x2, y2)
    plot([u1 u2 u3 u1], [v1 v2 v3 v1], 'r'); hold on;
    plot([0 x1 x2], [0 0 y2], 'bo'); hold on;
    plot([0 u1], [0 v1], 'o-b'); hold on;
    plot([x1 u2], [0 v2], 'o-b'); hold on;
    plot([x2 u3], [y2 v3], 'o-b'); hold on;
endfunction