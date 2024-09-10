unit mvc.model.entity.implement.produtos;

interface

uses
  System.SysUtils,
  mvc.model.entity.interfaces;

type
  TProdutos = class(TInterfacedObject, iProdutos)
  private
    FCodigo: Integer;
    FDescricao: String;
    FPrecoVenda: Currency;
  public
    class function New: iProdutos;
    function setCodigo(const Value: Integer): iProdutos;
    function getCodigo: Integer;
    function setDescricao(const Value: String): iProdutos;
    function getDescricao: String;
    function setPrecoVenda(const Value: Currency): iProdutos;
    function getPrecoVenda: Currency;
  end;


implementation

{ TProduto }

function TProdutos.getCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProdutos.getDescricao: String;
begin
  Result := FDescricao;
end;

function TProdutos.getPrecoVenda: Currency;
begin
  Result := FPrecoVenda;
end;

class function TProdutos.New: iProdutos;
begin
  Result := Self.Create;
end;

function TProdutos.setCodigo(const Value: Integer): iProdutos;
begin
  Result := Self;
  FCodigo := Value;
end;

function TProdutos.setDescricao(const Value: String): iProdutos;
begin
  Result := Self;
  FDescricao := Value;
end;

function TProdutos.setPrecoVenda(const Value: Currency): iProdutos;
begin
  Result := Self;
  FPrecoVenda := Value;
end;

end.
