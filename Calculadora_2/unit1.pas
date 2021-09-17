unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    Limpar: TButton;
    Sair: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure CalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    //procedure Label1Click(Sender: TObject);
    //procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalcularClick(Sender: TObject);
begin
  Edit3.Text:=FloatToStr(StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text))

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.LimparClick(Sender: TObject);
begin
         Edit1.text:='';
         Edit2.text:='';
         Edit3.text:='';
         Edit1.SetFocus;
end;

procedure TForm1.SairClick(Sender: TObject);
begin
             close;
end;

//procedure TForm1.Label1Click(Sender: TObject);
//begin
//
//end;

//procedure TForm1.Button1Click(Sender: TObject);
//begin
//
//end;

//procedure TForm1.Label2Click(Sender: TObject);
//begin
//end;

end.

