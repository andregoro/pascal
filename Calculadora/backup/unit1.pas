unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    res: TLabel;
    Resultado: TButton;
    Limpar: TButton;
    Sair: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    op: TLabel;
    Label3: TLabel;
    soma: TRadioButton;
    sub: TRadioButton;
    multiplicao: TRadioButton;
    divisao: TRadioButton;
    Operacao: TRadioGroup;
    procedure LimparClick(Sender: TObject);
    procedure OperacaoClick(Sender: TObject);
    procedure OperacaoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OperacaoMouseEnter(Sender: TObject);
    procedure resClick(Sender: TObject);
    procedure ResultadoClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure subChange(Sender: TObject);
  private

  public

  end;

var
  FormCalculator: TFormCalculator;

implementation

{$R *.lfm}

{ TFormCalculator }

procedure TFormCalculator.SairClick(Sender: TObject);
begin
    // Edit1.Text:=;
   Close;
end;

procedure TFormCalculator.subChange(Sender: TObject);
begin

end;

procedure TFormCalculator.ResultadoClick(Sender: TObject);
//var num,num2 :float;
begin
         try
         if soma.Checked = True then
            res.Caption :=  FloatToStr(StrToFloat(Edit1.Text)+StrToFloat(Edit2.Text))
         else if sub.Checked=True then
            res.Caption :=  FloatToStr(StrToFloat(Edit1.Text)-StrToFloat(Edit2.Text))
         else if multiplicao.Checked=True then
            res.Caption :=  FloatToStr(StrToFloat(Edit1.Text)*StrToFloat(Edit2.Text))
         else if divisao.Checked=True then
            res.Caption :=  FloatToStr(StrToFloat(Edit1.Text)/StrToFloat(Edit2.Text))
         else
             ShowMessage('Selecione uma opçao');

         except
          ShowMessage('So numero');
         end;
end;

procedure TFormCalculator.LimparClick(Sender: TObject);
begin
    Edit1.Text:='' ;
    Edit2.Text:='';
    res.Caption := '';
end;

procedure TFormCalculator.OperacaoClick(Sender: TObject);
begin

       if soma.Checked = True then
          op.Caption := '+'
       else if sub.Checked=True then
                  op.Caption := '-'
       else if multiplicao.Checked=True then
                  op.Caption := 'x'
       else if divisao.Checked=True then
                  op.Caption := '/'
       else
           ShowMessage('Selecione uma opçao');
end;

procedure TFormCalculator.OperacaoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TFormCalculator.OperacaoMouseEnter(Sender: TObject);
begin
        if soma.Checked = True then
          op.Caption := '+'
       else if sub.Checked=True then
                  op.Caption := '-'
       else if multiplicao.Checked=True then
                  op.Caption := 'x'
       else if divisao.Checked=True then
                  op.Caption := '/'

end;

procedure TFormCalculator.resClick(Sender: TObject);
begin

end;

end.

