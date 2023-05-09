unit uLoginUsuario;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.Edit, Data.DB, MemDS, DBAccess, Uni;

type
  TLoginUsuario = class(TForm)
    LayoutLogin: TLayout;
    LayoutTexto: TLayout;
    LBText: TLabel;
    RectangleLinha: TRectangle;
    LayoutRedeSociais: TLayout;
    LayoutSociais: TLayout;
    ImgInstagram: TImage;
    Image1: TImage;
    ImgLinkdlin: TImage;
    pnContent: TRectangle;
    LayoutCampos: TLayout;
    LayoutBotao: TLayout;
    LayoutB: TLayout;
    LayoutFinalTela: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    pnBotao: TRectangle;
    LBLogin: TLabel;
    qrUsuarioLogin: TUniQuery;
    qrUsuarioLoginNOME: TStringField;
    qrUsuarioLoginEMAIL: TStringField;
    qrUsuarioLoginSENHA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure LBLoginClick(Sender: TObject);
  private
    function Logar(nome, email, senha: string): Boolean;
  public
    { Public declarations }
  end;

var
  LoginUsuario: TLoginUsuario;

implementation

uses
  DM, uPrincipal, uCadastroUsuario;

{$R *.fmx}

procedure TLoginUsuario.FormShow(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;
end;

procedure TLoginUsuario.LBLoginClick(Sender: TObject);
var
  usuario,
  email,
  senha: string;
begin

end;

function TLoginUsuario.Logar(nome, email, senha: string): Boolean;
begin
  Result := False;

  try
    DM.Banco.Connection.StartTransaction;

    qrUsuarioLogin.Close;
    qrUsuarioLogin.SQL.Text := 'SELECT * FROM usuarios WHERE nome = :nome AND senha = :senha';
    qrUsuarioLogin.ParamByName('NOME').AsString;
    qrUsuarioLogin.ParamByName('EMAIL').AsString;
    qrUsuarioLogin.ParamByName('SENHA').AsString;
    qrUsuarioLogin.Open;

    if not qrUsuarioLogin.IsEmpty then
    begin
      Result := True;

      DM.Id := qrUsuarioLogin.ParamByName('ID').AsInteger;
      DM.Status := qrUsuarioLogin.ParamByName('STATUS').AsInteger;
      DM.Nome := qrUsuarioLogin.ParamByName('NOME').AsString;
      DM.Profissao := qrUsuarioLogin.ParamByName('PROFISSAO').AsString;
      DM.Telefone := qrUsuarioLogin.ParamByName('TELEFONE').AsString;
    end;
  except
    on e: Exception do
    begin
      ShowMessage('Erro ao fazer login!' + e.Message);
    end;
  end;
end;

end.
