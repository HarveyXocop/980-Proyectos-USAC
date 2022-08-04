%Este programa calcula varias estadisticas
%para una pronunciaón tomada de un archivo de datos
load cero.mat
x=cero(:,1);
fprintf('Estadisticas de digito \n\n')
fprintf('media: %f \n',mean(x))
fprintf('desviación estándar: %f \n',std(x))
fprintf('varianza: %f \n',std(x).^2)
fprintf('potencia media: %f \n',mean ((x.^2)))
fprintf('magnitud media: %f \n',mean (abs(x)))
prod = x(1:length(x)-1).*x(2:length(x));
crossings = length(find(prod<0));
fprintf('cruces de cero: %.0f \n',crossings)
subplot(2,1,1),plot(x),...
    title('Pronunciacíón de la palabra zero'),...
    xlabel('Indice'),grid 
    xlim([30000 50000])