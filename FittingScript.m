t = linspace(0, 100, 1000);
y = 300*sin(0.5*t + 0.3)+ 50;

ft = fittype('a*sin(b*x+c)+d');
 
[fitted_curve,gof] = fit(t(:), y(:), ft, 'StartPoint', [250, 0.9, 0.3, 50]);

% Save the coeffiecient values for a,b,c and d in a vector
coeffvals = coeffvalues(fitted_curve);

plot(t,y)
hold on 
plot(t, fitted_curve(t))
hold off