% Este programa lee valores de resistencia y voltaje
% y calcula las corrientes de malla correspondientes
% para un circuito eléctrico especificado.
%
R = input('1ntroduzca los valores de resistencia en ohms, [Rl ... R5]: ');
V = input('1ntroduzca los valores de voltaje en volts, [VI V2]: ');
%
% Inicializar matriz A y vector B usando la forma AX = B.
%
A =   [R(1)+R(2),           -R(2),              0;
           -R(2),  R(2)+R(3)+R(4),          -R(4);
               0,           -R(4),     R(4)+R(5)];
    
B = [ V(1) ;
        0  ; 
     -V(2)];
%
if rank(A) == 3
fprintf('Corrientes de malla \n')
i = A\B
else
fprintf('No existe una solución única')
end




