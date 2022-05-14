function [ sfinal ] = ACD(in, l , char , prob )


[sc1 sc2] = size(char);
[sr1 sr2] = size(char);
r = [0];
for i =1:sr2
    r = [r prob(i)+r(i)];
end
[sra1 sra2] = size(char);
range2 = r;
AC = [];
L = r(1);
H = r(sc2);
cf = 1;
sfinal = '';
    for c = 1:1:l
        for s = 1:1:sc2
            if(r(s) <= in && r(s+1)>= in )
                temp = strcat(char(s),'-');
                sfinal = strcat(sfinal,temp);
                L = r(s);
                H = r(s+1);
                AC(1) = L;
                for m =2:sc2
                    AC(m) = ((H-L)*range2(m))+L;
                end
                AC(sc2+1) = H;
                r = AC;
                break;
            end
        end
    end
end



