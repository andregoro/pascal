Program Pzim ;
Var int: ^integer;
		intt:integer;
Begin
     new(int);
     int^ :=100;
     //intt :=int^
     write(int^);
     dispose(int);
    // write(int);
End.