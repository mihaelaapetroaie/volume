function [ V ] = Volume( L )
r=L*sin(80*pi/180);

h=L*(1-sin(10*pi/180));

hc=L*sin(10*pi/180);

cone=pi*r*hc/3;

hemisphere=h*pi/6*(3*r^2+h^2);
V=cone+hemisphere;
end

