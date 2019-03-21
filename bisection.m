function x = bisection(f, a, b, tolerance)
  fa = f(a);
  fb = f(b);
  if sign(fa) * sign(fb) >= 0
      error('f(a) * f(b) < 0 tidak terpenuhi!');
  end

  while (b - a) / 2 > tolerance
      x = (a + b) / 2;
      fx = f(x);

      if sign(fx) * sign(fa) < 0
          b = x;
      else             
          a = x; 
          fa = fx;
      end
  end
endfunction