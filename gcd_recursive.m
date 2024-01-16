function result = gcd_recursive(a, b)
    if b == 0
        result = a;
    else
        result = gcd_recursive(b, mod(a, b));
    end
end