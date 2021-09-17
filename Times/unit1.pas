unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Shape1: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Right:Boolean;
  Up:Boolean;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin

            if Up = True then
               Shape1.Top:=Shape1.Top-5
            else
                Shape1.Top:=Shape1.Top+5;

            if Right=True then
               Shape1.Left:=Shape1.Left+5
            else
               Shape1.Left:=Shape1.Left-5;

            if Shape1.Top<=0 then
               Up :=False;

            if Shape1.Top+Shape1.Height >= Form1.Height then
               Up := True;

            if Shape1.Left <= 0 then
                  Right:=True;

            if Shape1.Left+Shape1.Width >=Form1.Width then
                  Right :=False;
end;

end.

