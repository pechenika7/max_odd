program vika;
var f:text;
    temp:integer;
    prom,res:integer;
    
procedure p;
begin
  if (odd(temp)) then prom+=1 
    else
    begin
      if (prom>res) then res:=prom;
      prom:=0;
    end;
end;

begin
  assign (f,'d:\123\random_numbs3.txt');
  reset(f);
  prom:=0;
  res:=0;
  while not(eof(f)) do
  begin
    readln(f,temp);
    p;
  end;
  if (prom>res) then res:=prom;
  close(f);
  writeln (res);
end.