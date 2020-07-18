Program Pzim ;
var 
i,l: integer;
k:array [1..5] of integer;
Begin
    i := 0;
    while i < 4 do
    begin
   
        inc(i , 1);
        read(k[i]);
         		writeln(k[i]);
    end;
		
		writeln('--------------------');
		
		repeat
		begin
			   inc(i, 1);
				writeln('',i);
     
		end
		until(i = 8);
	
	writeln('--------------------');
	for l:=9 to 12  do
	begin
      
    writeln(l);
	end;
End.                    