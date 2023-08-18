unit eNota.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eNota.Controlle.NotaFiscal.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eNota.Controlle.NotaFiscal;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TControllerNotaFiscal.New.GerarNotaPedido(100);
end;

end.
