Program Pzim ;
Var f:^integer;
procedure c(d:integer);
begin
	new(f);
	f^:=d;
	 writeln('andre');
end;
Begin
    c(10);
    writeln(f^);
End.