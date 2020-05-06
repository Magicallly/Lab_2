program laba2_1;
{$APPTYPE CONSOLE}
{$R *.res}
Var n, k: integer;
    x,f,Ffirst,Sum:real;
begin
    x:=0.6;
   while x<=1.111 do  // loop C
      begin
      Sum:=0;
      for k := 1 to 9 do   // loop A
         begin
         Sum:=Sum+((exp(2/3-k))/(sqrt(exp(ln(x)*k))*exp(ln(x)*(2*k-1))));
         end;
      for n := 10 to 15 do   // loop B
          begin
          Ffirst:=(exp(ln((1+(sin(pi*x/n)*sin(pi*x/n))))/3));
          Sum:=Sum+((exp(2/3-k))/(sqrt(exp(ln(x)*k))*exp(ln(x)*(2*k-1))));
          f:=Ffirst*Sum;
          writeln('n = ':1 ,n,'x = ':10,x:2:2,'f = ':11, f:2:10);
          end;
      x:=x+0.25;
      writeln;
      end;
readln;
end.
