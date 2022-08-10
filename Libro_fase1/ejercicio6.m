% Estos comandos generan y grafican valores de velocidad
% y aceleración en un intervalo especificado por el usuario.
%
star_time = input('Tec1ee tiempo inicial (en segundos): ');
end_time = input('Tec1ee tiempo final (máx. 120 segundos): ');
%
time_incr = (end_time - star_time)/99;
time = star_time:time_incr:end_time;
velocity = 0.00001*time.^3 - 0.00488*time.^2 + 0.75795*time + 181.3566;
acceleration = 3 - 0.000062*velocity.^2;
%
 subplot(2,1,1),plot(time,velocity),title('Velocity'),...
    ylabel( 'metros/segundo' ),grid,...
 subplot(2,1,2),plot(time,acceleration),...
    title( 'acceleration' ),...
    xlabel( 'Tiempo, s'),ylabel( 'metros/segundos^2' ),grid 

    
