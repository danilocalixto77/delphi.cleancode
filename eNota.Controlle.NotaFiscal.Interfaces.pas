unit eNota.Controlle.NotaFiscal.Interfaces;

interface

type

  iCommand = interface
    ['{937CED09-C37A-45EB-AFA4-8929DC49156B}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{2F629516-9B46-4D35-9726-74164EE24DDF}']
    function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

  iNotaFiscal = interface
    ['{5552AAC1-41E6-416B-B3CA-68CA86BCD402}']
    function Criar : iNotaFiscal;
    function Validar : iNotaFiscal;
    function Enviar : iNotaFiscal;
    function Gravar : iNotaFiscal;
    function Email : iNotaFiscal;
    function ImportarPedido(Value : Integer) : iNotaFiscal;
  end;

  iNotaFiscalView = interface
    ['{65F8B62C-5A36-4C48-8389-3866E21E4448}']
    function EnviarNotaSefaz : iNotaFiscal;
    function EnviarNotaSefazSemEmail : iNotaFiscal;
    function GerarNotaPedido(Codigo : Integer) : iNotaFiscal;
  end;

implementation

end.
