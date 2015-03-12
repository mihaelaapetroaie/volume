function [ res ] = plotarea( start, e, V, L, w,t)

    arr = linspace(start,e);
    areas = zeros(size(arr,2), 1);
    noths = zeros(size(arr,2), 1);
    
    trr = linspace(start,e);
    areas = zeros(size(arr,2), 1);
    noths = zeros(size(arr,2), 1);
    for i=1:size(arr,2)
        d = arr(i);
        areas(i) = area( V, L, d, w,t);
        noths(i) = Noth(L,d, w,t);
    end
    
    plot(noths, areas);
    xlabel('no of tethers');
    ylabel('area');
    
    res = [noths, areas, arr'];
    csvwrite('areas.csv', res);
end

