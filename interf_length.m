function [ il ] = interf_length( V, L, d )
sheathno=sheath(V);
hno=halfangled(L, d);
i_l=sheathno/sin(hno);
if i_l<L
    il=i_l;
    else
        il=L;
end

end

