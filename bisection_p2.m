function x = bisection_p2(f, p2, a, b, tolerance)
  fa = f(a, p2);
  fb = f(b, p2);
  if sign(fa) * sign(fb) >= 0
      error('f(a) * f(b) < 0 tidak terpenuhi!');
  end

  while (b - a) / 2 > tolerance
      x = (a + b) / 2;
      fx = f(x, p2);

      if sign(fx) * sign(fa) < 0
          b = x;
      else             
          a = x; 
          fa = fx;
      end
  end
endfunction