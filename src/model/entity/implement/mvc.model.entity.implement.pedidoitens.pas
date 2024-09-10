unit mvc.model.entity.implement.pedidoitens;

interface

uses
  System.SysUtils,
  mvc.model.entity.interfaces;

type
  TPedidoItens = class(TInterfacedObject, iPedidoItens)
  private
    FId: Integer;
    FNumeroPedido: Integer;
    FCodigoProduto: Integer;
    FQuantidade: Double;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  public
    class function New: iPedidoItens;
    function setId(const Value: Integer): iPedidoItens;
    function getId: Integer;
    function setNumeroPedido(const Value: Integer): iPedidoItens;
    function getNumeroPedido: Integer;
    function setCodigoProduto(const Value: Integer): iPedidoItens;
    function getCodigoProduto: Integer;
    function setQuantidade(const Value: Double): iPedidoItens;
    function getQuantidade: Double;
    function setValorUnitario(const Value: Currency): iPedidoItens;
    function getValorUnitario: Currency;
    function setValorTotal(const Value: Currency): iPedidoItens;
    function getValorTotal: Currency;
  end;

implementation

{ TPedidoItens }

function TPedidoItens.getCodigoProduto: Integer;
begin
  Result := FCodigoProduto;
end;

function TPedidoItens.getId: Integer;
begin
  Result := FId;
end;

function TPedidoItens.getNumeroPedido: Integer;
begin
  Result := FNumeroPedido;
end;

function TPedidoItens.getQuantidade: Double;
begin
  Result := FQuantidade;
end;

function TPedidoItens.getValorTotal: Currency;
begin
  Result := FValorTotal;
end;

function TPedidoItens.getValorUnitario: Currency;
begin
  Result := FValorUnitario;
end;

class function TPedidoItens.New: iPedidoItens;
begin
  Result := Self.Create;
end;

function TPedidoItens.setCodigoProduto(const Value: Integer): iPedidoItens;
begin
  Result := Self;
  FCodigoProduto := Value;
end;

function TPedidoItens.setId(const Value: Integer): iPedidoItens;
begin
  Result := Self;
  FId := Value;
end;

function TPedidoItens.setNumeroPedido(const Value: Integer): iPedidoItens;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TPedidoItens.setQuantidade(const Value: Double): iPedidoItens;
begin
  Result := Self;
  FQuantidade := Value;
end;

function TPedidoItens.setValorTotal(const Value: Currency): iPedidoItens;
begin
  Result := Self;
  FValorTotal := Value;
end;

function TPedidoItens.setValorUnitario(const Value: Currency): iPedidoItens;
begin
  Result := Self;
  FValorUnitario := Value;
end;

end.
