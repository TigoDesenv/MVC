unit mvc.model.connection.implement.configuration;

interface

uses
  System.SysUtils,
  IniFiles,
  mvc.model.connection.interfaces;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  const
    SECTION = 'CONFIG';
    CAMINHO = 'CAMINHO';
    PORTA = 'PORTA';
    SERVIDOR = 'SERVIDOR';
    USUARIO = 'USERNAME';
    SENHA = 'PASSWORD';
    DRIVERNAME = 'DRIVERNAME';

  private
    FArquivo: TIniFile;

    constructor Create(FileName: String);
    destructor Destroy; override;

  public
    class function New(FileName: String): iConfiguration;
    function GetProtocolo: String;
    function SetServidor(const Value: String): iConfiguration;
    function GetServidor: String;
    function SetPorta(const Value: Integer): iConfiguration;
    function GetPorta: Integer;
    function SetUsuario(const Value: String): iConfiguration;
    function GetUsuario: String;
    function SetSenha(const Value: String): iConfiguration;
    function GetSenha: String;
    function SetCaminho(const Value: String): iConfiguration;
    function GetCaminho: String;
    function SetDriverName(const Value: String): iConfiguration;
    function GetDriverName: String;
  end;

implementation

{ TConfiguration }

constructor TConfiguration.Create(FileName: String);
begin
  FArquivo := TIniFile.Create(FileName);
end;

destructor TConfiguration.Destroy;
begin
  FArquivo.Free;
  inherited;
end;

function TConfiguration.GetCaminho: String;
begin
  Result := FArquivo.ReadString(SECTION, CAMINHO, '');
end;

function TConfiguration.GetDriverName: String;
begin
  Result := FArquivo.ReadString(SECTION, DRIVERNAME, '');
end;

function TConfiguration.GetPorta: Integer;
begin
  Result := FArquivo.ReadInteger(SECTION, PORTA, 0);
end;

function TConfiguration.GetProtocolo: String;
begin
  Result := 'LOCAL';
  if not (FArquivo.ReadString(SECTION, SERVIDOR, '').Equals('LOCALHOST') or
    FArquivo.ReadString(SECTION, SERVIDOR, '').Equals('127.0.0.1')) then
    Result := 'TCP';
end;

function TConfiguration.GetSenha: String;
begin
  Result := FArquivo.ReadString(SECTION, SENHA, '');
end;

function TConfiguration.GetServidor: String;
begin
  Result := FArquivo.ReadString(SECTION, SERVIDOR, '');
end;

function TConfiguration.GetUsuario: String;
begin
  Result := FArquivo.ReadString(SECTION, USUARIO, '');
end;

class function TConfiguration.New(FileName: String): iConfiguration;
begin
  Result := Self.Create(FileName);
end;

function TConfiguration.SetCaminho(const Value: String): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, CAMINHO, Value);
end;

function TConfiguration.SetDriverName(const Value: String): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, DRIVERNAME, Value);
end;

function TConfiguration.SetPorta(const Value: Integer): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteInteger(SECTION, PORTA, Value);
end;

function TConfiguration.SetSenha(const Value: String): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, SENHA, Value);
end;

function TConfiguration.SetServidor(const Value: String): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, SERVIDOR, Value);
end;

function TConfiguration.SetUsuario(const Value: String): iConfiguration;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, USUARIO, Value);
end;

end.
