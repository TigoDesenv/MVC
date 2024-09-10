unit mvc.model.entity.implement.pedidos;

interface

uses
  System.SysUtils,
  mvc.model.entity.interfaces;

type
  TPedidos = class(TInterfacedObject, iPedidos)
  private
    FNumeroPedido: Integer;
    FDataEmissao: TDateTime;
    FCodigoCliente: Integer;
    FValorTotal: Currency;
  public
    class function New: iPedidos;
    function setNumeroPedido(const Value: Integer): iPedidos;
    function getNumeroPedido: Integer;
    function setDateEmissao(Value: TDateTime): iPedidos;
    function getDataEmissao: TDateTime;
    function setCodigoCliente(const Value: Integer): iPedidos;
    function getCodigoCliente: Integer;
    function setValorTotal(const Value: Currency): iPedidos;
    function getValorTotal: Currency;
  end;

implementation

{ TPedido }

function TPedidos.getCodigoCliente: Integer;
begin
  Result := FCodigoCliente;
end;

function TPedidos.getDataEmissao: TDateTime;
begin
  Result := FDataEmissao;
end;

function TPedidos.getNumeroPedido: Integer;
begin
  Result := FNumeroPedido;
end;

function TPedidos.getValorTotal: Currency;
begin
  Result := FValorTotal;
end;

class function TPedidos.New: iPedidos;
begin
  Result := Self.Create;
end;

function TPedidos.setCodigoCliente(const Value: Integer): iPedidos;
begin
  Result := Self;
  FCodigoCliente := Value;
end;

function TPedidos.setDateEmissao(Value: TDateTime): iPedidos;
begin
  Result := Self;
  FDataEmissao := Value;
end;

function TPedidos.setNumeroPedido(const Value: Integer): iPedidos;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TPedidos.setValorTotal(const Value: Currency): iPedidos;
begin
  Result := Self;
  FValorTotal := Value;
end;

end.
