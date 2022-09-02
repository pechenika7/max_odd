program vika;
const str=7;
var f:text;
    temp,s5,s5max:integer;
    prom:integer;

begin
  assign (f,'d:\123\random_numbs3.txt');
  reset(f);
  prom:=0;
  s5:=0;
  while not(eof(f)) do
  begin
    readln(f,temp);
    if (odd(temp)) then
    begin
      prom+=1;
      s5+=temp;
    end
    else
    begin
      if (prom=str) and (s5>s5max) then s5max:=s5;
      prom:=0;
      s5:=0;
    end;
  end;
  if (prom=str) and (s5>s5max) then s5max:=s5;
  close(f);
  writeln (s5max);
end.