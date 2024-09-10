unit mvc.model.entity.implement.entity;

interface

uses
  System.SysUtils,
  mvc.model.entity.interfaces;

type
  TEntity = class(TInterfacedObject, iEntity)
  private
    FCliente: iCliente;
    FProdutos: iProdutos;
    FPedidos: iPedidos;
    FPedidoItens: iPedidoItens;
  public
    class function New: iEntity;
    function Cliente: iCliente;
    function Produtos: iProdutos;
    function Pedidos: iPedidos;
    function PedidoItens: iPedidoItens;
  end;

implementation

uses
  mvc.model.entity.implement.cliente,
  mvc.model.entity.implement.produtos,
  mvc.model.entity.implement.pedidos,
  mvc.model.entity.implement.pedidoitens;

{ TEntity }

function TEntity.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TCliente.New;

  Result := FCliente;
end;

class function TEntity.New: iEntity;
begin
  Result := Self.Create;
end;

function TEntity.PedidoItens: iPedidoItens;
begin
  if not Assigned(FPedidoItens) then
    FPedidoItens := TPedidoItens.New;

  Result := FPedidoItens;
end;

function TEntity.Pedidos: iPedidos;
begin
  if not Assigned(FPedidos) then
    FPedidos := TPedidos.New;

  Result := FPedidos;
end;

function TEntity.Produtos: iProdutos;
begin
  if not Assigned(FProdutos) then
    FProdutos := TProdutos.New;

  Result := FProdutos;
end;

end.
