function ar_o_no = ar_o_no(p)
    ar_o_no = [];
    inar = functions(p); 
    inar = inar.function;
    inar = extractBetween(inar,'(',')');
    inargu = char(inar(1));
    for i = 2 : 3 : size(inargu,2)
        ar_o_no=[ar_o_no str2num(inargu(i))];
    end
end

