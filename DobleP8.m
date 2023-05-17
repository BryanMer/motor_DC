function dt = DobleP8(t, x)
%ARGUMENTOS
    R = 2;
    L = 23e-3;
    J = 1e-3;
    Kv = 0.01;
    Kt = 0.01;
    B = 12e-4;
    Vi = 24*.25;
%HACER MATRIZ CON FUNCIÓN DE TRASFERENCIA
   
    dt = zeros(3,1);

    dt(1) = ((1/L)*(Vi-Kv*x(3)-R*x(1)));
    dt(2) = x(3);
    dt(3) = ((1/J)*(Kt*x(1)-B*x(3)));

end


