
seed_numbers = {'02','04','09','10','12','15','18','20','25','27','31'};

for i = 1:numel(seed_numbers) 
    seed_file = strcat('DataFigures/seed', seed_numbers{i}, '.fig');
    disp(seed_file);
    export_seed_data(seed_file);
end 
%export_seed_data('DataFigures/seed02.fig');


function export_seed_data(infile)
    fig=openfig(infile, 'invisible');
    dataObjsY = findobj(fig,'-property','YData');
    y = dataObjsY(1).YData;
    dataObjsX = findobj(fig,'-property','XData');
    x = dataObjsX(1).XData;
    dataObjsZ = findobj(fig,'-property','ZData');
    z = dataObjsZ(1).ZData;
    writematrix(x,'x.dat','Delimiter',';','WriteMode','append');
    writematrix(y,'y.dat','Delimiter',';','WriteMode','append');
    writematrix(z,'z.dat','Delimiter',';','WriteMode','append');
end