load datos.dat;
mw = [89 175 132 132 121 146 146 75 156 131 131 147 149 165 116 105 119 203 181 117];
%
weights = datos*mw';
%
[rows,cols] = size (datos);
for k=1:rows
    fprintf('proteina %3.0f: peso molecular = %5.0f \n',...
        k, weights(k));
end;
