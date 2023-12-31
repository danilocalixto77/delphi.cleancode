unit eNota.Controlle.NotaFiscal.Criar;

interface

uses
  eNota.Controlle.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
    private
      //Vari�vel
      FParent : iNotaFiscal;

    public
      constructor Create(Parent : iNotaFiscal);
      destructor Destroy; override;
      //Inje��o de depend�ncia Parent
      class function New(Parent : iNotaFiscal) : iCommand;
      function Execute : iCommand;

  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;


end.
