function root = secant_method(f, x0, x1, tolerance)
    fx0 = f(x0);
    fx1 = f(x1);
    
    num_of_iterations = 0;
    while abs(fx1) > tolerance && num_of_iterations < 100
        try
            h = (x1 - x0) / (fx1 - fx0);
            new_x1 = x1 - (fx1 * h);
        catch
            return
        end
        x0 = x1;
        x1 = new_x1;
        fx0 = fx1;
        fx1 = f(x1);
        num_of_iterations += 1;
    end
    root = x1;
endfunction