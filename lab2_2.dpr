program lab2_2;
{$APPTYPE CONSOLE}
{$R *.res}
var
  n, i: integer;
  y, x: real;
begin
  x := 0.5;
  while x <= 0.81 do   // loop A
  begin
    y := 0;
    n := 2;
    while n <= 10 do  // loop B
    begin
      y := (exp(ln(x) * n) * (x - n)) / (exp(ln(x) / n) + y);
      n := n + 1;
    end;
    writeln;
    writeln('x:', x:3:2, '      y: ', y:15:14);
    x := x + 0.05;
  end;
  readln;
end.
