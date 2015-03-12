function [ it ] = interf_2(V, L, t)
sheathno=sheath(V);
b=halfanglet( L, t );
i_t=sheathno/sin(b);
if i_t<L
    it=i_t;
    else
        it=L;
end
end

