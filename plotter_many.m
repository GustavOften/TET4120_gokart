function plotter_many(timeseries, legends, name, xlab, ylab)
    figure('rend','painters','pos',[10 10 750 400])
    hold on;
    for i = 1:size(timeseries)
      plot(timeseries(i),'DisplayName', legends(i));
    end
    title(name);
    xlabel(xlab);
    ylabel(ylab);
    grid on;
    legend boxoff;
    hold off;
end

