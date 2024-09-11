unit mvc.model.connection.interfaces;

interface

uses
  Data.DB;

type
  iConnection = Interface
    ['{79CE4A75-5D07-43EA-B13E-486ED21B98CE}']
    function Connection: TCustomConnection;
  End;

  iQuery = Interface
    ['{3DE755DF-2222-49E2-85FD-13327CB0418E}']
    procedure Query(const Statement: String; Params: Array of Variant); overload;
    function Query(const Statement: Variant; Params: Array of Variant): TDataSet; overload;
  End;

  iConfiguration = Interface
    ['{5CB2DBB9-EF36-4FFC-9E55-5ED7C41B51DB}']
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
  End;

implementation

end.
