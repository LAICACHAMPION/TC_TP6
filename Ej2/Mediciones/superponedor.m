function [  ] = superponedor( titulo,medicion,guardar)
%SUPERPONEDOR DE BODES: teorico matlab, simulacion spice, medido
% medicion: csv con las columnas:
%  - frecuencia en kHz
%  - tension de entrada 
%  - tension de salida (mismas unidades que entrada)
%  - fase en grados
% simulacion: archivo que te tira spice
% H: funcion transferencia
% w: vector de frecuencias
% guardar: si es 'save' guarda el jpg

c_m=csvread(medicion);

magMedida=20*log10(c_m(:,2));


bode_fig=figure('Name',titulo,'NumberTitle','off');


%%%%%subplot magnitud%%%%%%

%plot mag medida
plot(c_m(:,1),magMedida,'o-', 'LineWidth', 3);
hold on;
%xlim([1 1e3]);
formataxes(titulo, 'Frecuencia ($Hz$)', 'Tension ($V$)', ... % titulo y ejes
                    'Medici\''on')% legends

set(bode_fig,'units','centimeters','position',[0 0 20 15]);
saveas(bode_fig,strcat(guardar,'_bode','.png'));
hold off;
end
