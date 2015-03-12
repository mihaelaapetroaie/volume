function [ sheath ] = sheath( V )
etano=eta(V);
sheath=Ro*alpha/(3*s)*(0.5*log(((etano+alpha)^2)/(etano^2-alpha*etano+alpha^2))+sqrt(3)*atan((2*etano-alpha)/(alpha*sqrt(3))));


end

