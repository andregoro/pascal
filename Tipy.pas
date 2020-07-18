Program Pzim ;
type 
	vogais=(a,e,i,o,u);
var
	vogal:vogais;	
Begin
     for vogal :=a to u do
     begin
    		case vogal of a,e,i,o,u:
    			begin
    				 write('vogal');
    			end;
				end;
    		break;
     end;
End.