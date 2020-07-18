program Project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  ,Crt
  { you can add units after this };

type

  { TMyApplication }

  TMyApplication = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TMyApplication }

procedure TMyApplication.DoRun;
var
  ErrorMsg: String;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h', 'help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h', 'help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TMyApplication.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TMyApplication.Destroy;
begin
  inherited Destroy;
end;

procedure Loop  ;
var a,e:Integer;
begin
  e:=1;
         a:=1;
     while a < 2  do
     begin
           writeln(a);
           a:=a+1;
     end;
     a:=0;
     repeat
           writeln(a);
           a:=a+1;
     until a<>2 ;


     for e:=0 to 2 do
        writeln(e);

end;

procedure esc ;
var sel:string;
begin
   if 1 = 1 then
      writeln(0);

   sel:='andre';

   case sel of
   '1':writeln('Um');
   else
       writeln('difente de um ',sel);

   end;
end  ;

procedure Preventing_Crashes;
var error,num:integer;
      user:string;
begin
   repeat
         write('Digite integer');
         readln(user);
         val(user,num,error);
   until error =0;
   writeln('Seu ',num);

end;

procedure TMyApplication.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;
procedure Random_Numbers;
var
   num:integer;
   x:integer;
begin
    //randomize;
    for x := 1 to 50 do
    begin
          num :=random(10);
          writeln(num,'');
    end  ;
end;
procedure metodo(name:string)  ;
begin
     write(name);
end;
function funcao(x,y:real):real;
begin
   funcao :=x *y
end;

var
  Application: TMyApplication;
  name:string;
  num1:integer;
begin
  //Application:=TMyApplication.Create(nil);
  //Application.Title:='My Application';
  //Application.Run;
  //writeln('s');
  //num1:=10;
  //writeln(num1);
  //writeln;
  //esc();
  //writeln('<Enter>');
  //readln;
  //Application.Free;
    //Delay(4000);
//
//  Random_Numbers();
                metodo('andre');
                   readln;
end.

