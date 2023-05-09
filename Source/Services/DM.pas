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
    qrServicosPSQ: TUniQuery;
    qrServicosPSQID: TIntegerField;
    qrServicosPSQSERVICO: TStringField;
    qrServicosPSQDESCRISCAO: TMemoField;
    qrServicosPSQVALOR_SERVICO: TFloatField;
    qrServicosPSQDESCONTO_SERVICO: TFloatField;
    qrServicosPSQID_USUARIO: TIntegerField;
    qrServicosPSQFORMA_PAGEMTO: TStringField;
    qrServicosPSQESTADO: TStringField;
    qrServicosPSQCIDADE: TStringField;
    qrServicosPSQBAIRRO: TStringField;
    qrServicosPSQENDERECO: TStringField;
    qrServicosPSQNUMERO_CASA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Banco: TBanco;
  Id,
  Status,
  id_Usuario,
  Id_Servico: Integer;

  Nome,
  Profissao,
  Telefone,
  Senha,
  Servico,
  Descriscao,
  Forma_pagamento,
  Estado,
  Cidade,
  Bairro: string;

  Numero_casa: Float64;

  Valor_Servico,
  Desconto_servico: string;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
