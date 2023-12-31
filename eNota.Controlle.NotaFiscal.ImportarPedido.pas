unit eNota.Controlle.NotaFiscal.ImportarPedido;

interface

uses
  eNota.Controlle.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalImportarPedido = class(TInterfacedObject, iCommand)
    private
      //Vari�vel
      FParent : iNotaFiscal;
      FNumeroPedido : Integer;

    public
      constructor Create(Parent : iNotaFiscal; NumeroPedido : Integer);
      destructor Destroy; override;
      //Inje��o de depend�ncia Parent
      class function New(Parent : iNotaFiscal; NumeroPedido : Integer) : iCommand;
      function Execute : iCommand;

  end;

implementation

{ TControllerNotaFiscalImportarPedido }

constructor TControllerNotaFiscalImportarPedido.Create(Parent : iNotaFiscal; NumeroPedido : Integer);
begin
  FParent := Parent;
  FNumeroPedido := NumeroPedido;
end;

destructor TControllerNotaFiscalImportarPedido.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalImportarPedido.Execute: iCommand;
begin
  Result := Self;
  FParent.ImportarPedido(FNumeroPedido);
end;

class function TControllerNotaFiscalImportarPedido.New(Parent : iNotaFiscal; NumeroPedido : Integer) : iCommand;
begin
  Result := Self.Create(Parent, NumeroPedido);
end;


end.
