
% Estas instrucciones calculan el valor de la
% velocidad de flujo media para una tubería
% usando integración numérica.
%
vmax = 1.5;
r0 = 0.5;

integral = quad(@velocidad, 0, 0.5)

ave_velocity = (2*vmax/(r0^2))*integral

function v = velocidad(r)
    r0 = 0.5;
    n = 8;
    v = r.*(1-r/r0).^(1/n);
end





