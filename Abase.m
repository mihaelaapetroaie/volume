function [ Ab ] = Abase( L)
r=L/2;
minhno=minh(L);
Ab=2*pi*r*(r-(r-(L-minhno)));
end

