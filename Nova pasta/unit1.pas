unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Balls :  array [1..5] of TShape;
  Right:array [1..5] of Boolean;
  Up:array [1..5] of Boolean;
  x: integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Balls[1]:=Shape1;
  Balls[2]:=Shape2;
  Balls[3]:=Shape3;
  Balls[4]:=Shape4;
  Balls[5]:=Shape5;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    for x :=1 to 5 do
    begin
    if Up[x] =True then
       Balls[x].Top :=Balls[x].Top-5
    else
       Balls[x].Top:=Balls[x].Top +5;

    if Right[x] = True then
       Balls[x].Left :=Balls[x].Left +5
    else
       Balls[x].Left := Balls[x].Left -5;

    if  Balls[x].Top<=0 then
        Up[x]:=False;

    if Balls[x].Top+Balls[x].Height >= Form1.Height then
        Up[x]:=True;

    if Balls[x].Left <=0 then
      Right[x] :=True;

    if Balls[x].Left + Balls[x].Width >= Form1.Width then
       Right[x]:= False;

    end;
end;

end.

