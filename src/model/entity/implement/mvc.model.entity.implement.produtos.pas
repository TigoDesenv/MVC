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
    function SetCodigo(const Value: Integer): iProdutos;
    function GetCodigo: Integer;
    function SetDescricao(const Value: String): iProdutos;
    function GetDescricao: String;
    function SetPrecoVenda(const Value: Currency): iProdutos;
    function GetPrecoVenda: Currency;
  end;


implementation

{ TProduto }

function TProdutos.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProdutos.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TProdutos.GetPrecoVenda: Currency;
begin
  Result := FPrecoVenda;
end;

class function TProdutos.New: iProdutos;
begin
  Result := Self.Create;
end;

function TProdutos.SetCodigo(const Value: Integer): iProdutos;
begin
  Result := Self;
  FCodigo := Value;
end;

function TProdutos.SetDescricao(const Value: String): iProdutos;
begin
  Result := Self;
  FDescricao := Value;
end;

function TProdutos.SetPrecoVenda(const Value: Currency): iProdutos;
begin
  Result := Self;
  FPrecoVenda := Value;
end;

end.
