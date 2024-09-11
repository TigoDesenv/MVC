unit mvc.model.entity.interfaces;

interface

type
  iCliente = Interface
    ['{D8BF2C86-B978-479F-B8FF-E18F72CD3EC2}']
    function setCodigo(const Value: Integer): iCliente;
    function getCodigo: Integer;
    function setNome(const Value: String): iCliente;
    function getNome: String;
    function setCidade(const Value: String): iCliente;
    function getCidade: String;
    function setEstado(const Value: String): iCliente;
    function getEstado: String;
  End;

  iProdutos = Interface
    ['{8F3CAA5F-B7D0-42F4-982F-5F11E8D35AA6}']
    function setCodigo(const Value: Integer): iProdutos;
    function getCodigo: Integer;
    function setDescricao(const Value: String): iProdutos;
    function getDescricao: String;
    function setPrecoVenda(const Value: Currency): iProdutos;
    function getPrecoVenda: Currency;
  End;

  iPedidos = Interface
    ['{8473B011-CACD-4D30-B89D-E133FD61551A}']
    function setNumeroPedido(const Value: Integer): iPedidos;
    function getNumeroPedido: Integer;
    function setDateEmissao(Value: TDateTime): iPedidos;
    function getDataEmissao: TDateTime;
    function setCodigoCliente(const Value: Integer): iPedidos;
    function getCodigoCliente: Integer;
    function setValorTotal(const Value: Currency): iPedidos;
    function getValorTotal: Currency;

  End;

  iPedidoItens = Interface
    ['{5599FB19-4DD6-4262-A783-F3257938F593}']
    function SetId(const Value: Integer): iPedidoItens;
    function GetId: Integer;
    function SetNumeroPedido(const Value: Integer): iPedidoItens;
    function GetNumeroPedido: Integer;
    function SetCodigoProduto(const Value: Integer): iPedidoItens;
    function GetCodigoProduto: Integer;
    function SetQuantidade(const Value: Double): iPedidoItens;
    function GetQuantidade: Double;
    function SetValorUnitario(const Value: Currency): iPedidoItens;
    function GetValorUnitario: Currency;
    function SetValorTotal(const Value: Currency): iPedidoItens;
    function GetValorTotal: Currency;
  End;

  iEntity = Interface
    ['{B07553EE-11AD-4ACB-8736-5719AD108E29}']
    function Cliente: iCliente;
    function Produtos: iProdutos;
    function Pedidos: iPedidos;
    function PedidoItens: iPedidoItens;
  End;

implementation

end.
