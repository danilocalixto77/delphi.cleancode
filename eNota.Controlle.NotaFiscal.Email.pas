unit eNota.Controlle.NotaFiscal.Email;

interface

uses
  eNota.Controlle.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
  private
    FParent : iNotaFiscal;
  public
    constructor Create(Parent : iNotaFiscal);
    destructor Destroy; override;
    class function New(Parent : iNotaFiscal) : iCommand;
    function Execute : iCommand;

  end;

implementation

{ TControllerNotaFiscalEmail }



{ TControllerNotaFiscalEmail }

constructor TControllerNotaFiscalEmail.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotaFiscalEmail.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

{ TControllerNotaFiscalEmail }



end.
