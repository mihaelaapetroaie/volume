function [ no ] = Noth( L,d, w,t )

diam = 2*L*sin(80*pi/180);
no=0;
while diam > 0
    no=no+floor((diam*pi)/(d+w));
    diam = diam - 2*t;
end



end
