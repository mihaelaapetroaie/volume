function [ A ] = area( V, L, d , w, t)
N=Noth(L,d, w,t);
interference = interf_length(V, L, d);
int2=interf_2(V, L, t);
sh=sheath(V);
inter=max(interference,int2);
h=minh(L);
b=N*((L-inter)*(2*pi*sh^2+2*sh*2+2*w));

diam = 2*(L*sin(80*pi/180));
r=(L*sin(80*pi/180));
cd=0;
while diam > 0
    if int2<interference
        if interference == L
            cd=cd+(diam*pi/2*interference) + +2*pi*r*h ;
        else
            cd=cd +2*(diam*pi/2*abs(interference-int2))+ 2*(sin(halfanglet(L, t))-2*sh)*int2*diam/2*pi + (r*pi*int2);
        end
    else
        cd=cd+(r*pi*int2)+2*sin(halfanglet(L, t))*int2*diam*pi;
    end
    diam = diam - t;
end
A=b+cd;
end

