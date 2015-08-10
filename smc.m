function output = smc(e, e_dot, Kd, lambda, psi)
    s = lambda * e + e_dot;
        
    if (abs(s) > psi)    
        sat_s = sign(s);
    else
        sat_s = s/psi;
    end
    
    output = -Kd * sat_s;

end