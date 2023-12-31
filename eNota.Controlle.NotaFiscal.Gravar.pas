unit eNota.Controlle.NotaFiscal.Gravar;

interface

uses
  eNota.Controlle.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalGravar = class(TInterfacedObject, iCommand)
  private
    FParent : iNotaFiscal;

  public
    constructor Create(Parent : iNotaFiscal);
    destructor Destroy; override;
    class function New(Parent : iNotaFiscal) : iCommand;
    function Execute : iCommand;

  end;

implementation

{ TControllerNotaFiscalGravar }


{ TControllerNotaFiscalGravar }

constructor TControllerNotaFiscalGravar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;

end;

destructor TControllerNotaFiscalGravar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalGravar.Execute: iCommand;
begin
  Result := Self;
  FParent.Gravar;
end;

class function TControllerNotaFiscalGravar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
