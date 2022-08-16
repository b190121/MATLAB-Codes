lat=[27.125:0.25:28.125]';
lon=[88.125:0.25:89.875]';
[m,n] = ndgrid(lat,lon);
Z = [m(:),n(:)];
%%
s=readtable('PrecipData.txt');
PrecipData = table2array(s);
save('PrecipData','PrecipData')
%% Sikkim Grids
z
save('Sikkim_grids','z')

sikkim_rainfall_hist=PrecipData(3:end,z(:,3));
date_historical=PrecipData(3:end,1:3);
sikkim_hist_rain=[date_historical,sikkim_rainfall_hist];

%% Extracting Historical Rainfall Properties

