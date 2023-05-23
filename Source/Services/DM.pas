unit DM;

interface

uses
  System.SysUtils,
  System.Classes,
  UniProvider,
  MySQLUniProvider,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TBanco = class(TDataModule)
    Connection: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    qrUsuariosPSQ: TUniQuery;
    qrUsuariosPSQID: TIntegerField;
    qrUsuariosPSQNOME: TStringField;
    qrUsuariosPSQEMAIL: TStringField;
    qrUsuariosPSQTELEFONE: TStringField;
    qrUsuariosPSQSENHA: TStringField;
    qrUsuariosPSQPROFISSAO: TStringField;
    qrUsuariosPSQSTATUS: TIntegerField;
    qrListar: TUniQuery;
    qrServicosPSQ: TUniQuery;
    qrListarID_USERS: TIntegerField;
    qrListarNOME: TStringField;
    qrListarEMAIL: TStringField;
    qrListarTELEFONE: TStringField;
    qrListarSENHA: TStringField;
    qrListarPROFISSAO: TStringField;
    qrListarID_SERVICOS: TIntegerField;
    qrListarSERVICO: TStringField;
    qrListarDESCRISCAO: TMemoField;
    qrListarVALOR: TFloatField;
    qrListarDESCONTO: TFloatField;
    qrListarFORMA_PAGAMENTO: TStringField;
    qrListarESTADO: TStringField;
    qrListarCIDADE: TStringField;
    qrListarBAIRRO: TStringField;
    qrListarENDERECO: TStringField;
    qrListarID_USUARIO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Banco: TBanco;
  Id,
  Status: Integer;
  Nome,
  Profissao,
  Telefone,
  Senha: string;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
