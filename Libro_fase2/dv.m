initial_vel = 180;
seconds = 240;

[t, num_v] = ode23(@g, [0 seconds], 0, initial_vel); 
acc = 3 - 0.000062*num_v.^2;
 
subplot(2,1,1), plot(t, num_v), title('Velocidad'),...
    ylabel('m/s'), grid, ...
subplot(2, 1, 2), plot(t, acc), title('Aceleracion'),...
    xlabel('Tiempo, s'), ylabel('m/s^2'), grid
function dv = g(t, v)
     
    dv = 3 - 0.000062*v.^2;  
end
 