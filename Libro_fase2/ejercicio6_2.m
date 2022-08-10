% Estas instrucciones leen un archivo de datos que contiene
% loa puntos de una trayectoria para que un brazo manipulador
% vaya a un lugar y recoja un objeto, luego vaya a otro
% lugar y suelte el objeto, y por último regrese a
% la posición inicial.
%
load points.dat;
x = points(:,1);
y = points(:,2);
code = points(:,3);
%
% Generar las tres trayectorias individuales.
%
grasp = find(code == 2);
release = find(code == 3);
lenx = length(x);

x1 = x(1:grasp);        
y1 = y(1:grasp);
x2 = x(grasp:release);  
y2 = y(grasp:release);
x3 = x(release:lenx);   
y3 = y(release:lenx);
%
% Calcular el incremento de tiempo y las secuencias de tiempo correspondientes.
%
incr = min(abs(x(2:lenx)-x(1:lenx-1)))/10;
t1 = x(1):incr*sign(x(grasp)-x(1)):x(grasp);
t2 = x(grasp):incr*sign(x(release)-x(grasp)):x(release);
t3 = x(release):incr*sign(x(lenx)-x(release)):x(lenx);
%
% Calcular las splines.
%
s1 = interp1(x1,y1,t1,'spline');
s2 = interp1(x2,y2,t2,'spline');
s3 = interp1(x3,y3,t3,'spline');
%
% Graficar la trayectoria de splines.
%
subplot(2,1,1),...
    plot([t1 t2 t3], [s1 s2 s3], [x1' x2' x3'], [y1' y2' y3'], 'o'), title ('Camino del brazo manipulador'),... 
    xlabel('x'), ylabel('y'), grid;
axis( [-1,16, -4,10]);