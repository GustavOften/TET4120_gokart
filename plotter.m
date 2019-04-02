function plotter(timeseries, name, xlab, ylab)
    figure('rend','painters','pos',[10 10 750 400])
    hold on;
    plot(timeseries)
    title(name);
    xlabel(xlab);
    ylabel(ylab);
    grid on;
    hold off;
end

