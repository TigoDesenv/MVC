unit mvc.model.connection.implement.firedac;

interface

uses
  System.SysUtils,
  Data.DB,
  Datasnap.DBClient,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Stan.Param,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.Intf,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  mvc.model.connection.interfaces;

type
  TConnectionFireDac = class(TInterfacedObject, iConnection)
  private
    FConn: TFDConnection;
    FConf: iConfiguration;
  public
    class function New: iConnection;
    function Connection: TCustomConnection;
    constructor Create;
    destructor Destroy; override;
  end;


implementation

uses
  mvc.model.connection.implement.configuration;

{ TConnectionFireDac }

function TConnectionFireDac.Connection: TCustomConnection;
begin
  Result := FConn;
end;

constructor TConnectionFireDac.Create;
begin
  FConn := TFDConnection.Create(nil);
  FConf := TConfiguration.New(ExtractFilePath(ParamStr(0)));
  try
    FConn.Params.Clear;
    FConn.Params.DriverID := FConf.GetDriverName;
    FConn.Params.UserName := FConf.GetUsuario;
    FConn.Params.Password := FConf.GetSenha;

    if FConf.GetDriverName.Equals('SQLite') then
      FConn.Params.Add('LockingMode=Normal');
  except
    raise Exception.Create('Erro ao tentar conectar com a base de dados, favor entre em contato com o suporte');
  end;
end;

destructor TConnectionFireDac.Destroy;
begin
  FConn.Free;
  inherited;
end;

class function TConnectionFireDac.New: iConnection;
begin
  Result := Self.Create;
end;

end.
