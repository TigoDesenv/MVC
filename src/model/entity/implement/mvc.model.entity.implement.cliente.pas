unit mvc.model.entity.implement.cliente;

interface

uses
  System.SysUtils,
  mvc.model.entity.interfaces;

type
  TCliente = class(TInterfacedObject, iCliente)
  private
    FCodigo: Integer;
    FNome: String;
    FCidade: String;
    FEstado: String;
  public
    class function New: iCliente;
    function setCodigo(const Value: Integer): iCliente;
    function getCodigo: Integer;
    function setNome(const Value: String): iCliente;
    function getNome: String;
    function setCidade(const Value: String): iCliente;
    function getCidade: String;
    function setEstado(const Value: String): iCliente;
    function getEstado: String;
  end;

implementation

{ TCliente }

function TCliente.getCidade: String;
begin
  Result := FCidade;
end;

function TCliente.getCodigo: Integer;
begin
  Result := FCodigo;
end;

function TCliente.getEstado: String;
begin
  Result := FEstado;
end;

function TCliente.getNome: String;
begin
  Result := FNome;
end;

class function TCliente.New: iCliente;
begin
  Result := Self.Create;
end;

function TCliente.setCidade(const Value: String): iCliente;
begin
  Result := Self;
  FCidade := value;
end;

function TCliente.setCodigo(const Value: Integer): iCliente;
begin
  Result := Self;
  FCodigo := Value;
end;

function TCliente.setEstado(const Value: String): iCliente;
begin
  Result := Self;
  FEstado := Value;
end;

function TCliente.setNome(const Value: String): iCliente;
begin
  Result := Self;
  FNome := Value;
end;

end.
