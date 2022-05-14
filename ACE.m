function [ rfinal ] = ACE( string , char , prob )


stringar = strsplit(string, '-');
[ss1 , ss2] = size(stringar);
[sc1 sc2] = size(char);
[sr1 sr2] = size(char);
r = [0];
for i =1:sr2
    r = [r prob(i)+r(i)];
end
[sra1 sra2] = size(char);
rrange = r;
nc = ceil(ss2/2);
AC = [];
L = r(1);
H = r(sc2);
cf = 1;
    for c = 1:1:ss2
        for s = 1:1:sc2
            if(strcmp(char(s),stringar(c)))
                L = r(s);
                H = r(s+1);
                AC(1) = L;
                for m =2:sc2
                    AC(m) = ((H-L)*rrange(m))+L;
                end
                AC(sc2+1) = H;
                r = AC;
                break;
            end
        end
    end
    r1 = r(1);
    r2 = r(sc2);
    rfinal = (r1+r2)/2;
end

