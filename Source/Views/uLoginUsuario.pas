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
  FMX.Edit,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

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
    edtNomeEmail: TEdit;
    edtSenha: TEdit;
    pnBotao: TRectangle;
    LBLogin: TLabel;
    qrUsuarioLogin: TUniQuery;
    qrUsuarioLoginNOME: TStringField;
    qrUsuarioLoginEMAIL: TStringField;
    qrUsuarioLoginSENHA: TStringField;
    qrUsuarioLoginLOGADO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure LBLoginClick(Sender: TObject);
    procedure LayoutBClick(Sender: TObject);
  private
    procedure Logar;
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
  qrUsuarioLogin.Active := True;
end;

procedure TLoginUsuario.LBLoginClick(Sender: TObject);
begin
  Logar;
end;

procedure TLoginUsuario.Logar;
begin
  try
    DM.Banco.Connection.StartTransaction;

    qrUsuarioLogin.Close;
    qrUsuarioLogin.SQL.Text := 'SELECT U.NOME, U.EMAIL, U.SENHA, U.LOGADO FROM usuarios U WHERE nome = :nome AND email = :email AND senha = :senha';
    qrUsuarioLogin.ParamByName('NOME').AsString := edtNomeEmail.Text;
    qrUsuarioLogin.ParamByName('EMAIL').AsString := edtNomeEmail.Text;
    qrUsuarioLogin.ParamByName('SENHA').AsString := edtSenha.Text;
    qrUsuarioLogin.ParamByName('LOGADO').AsInteger := 1;
    qrUsuarioLogin.Open;

    if not qrUsuarioLogin.IsEmpty then
    begin
      qrUsuarioLogin.ParamByName('ID').AsInteger := DM.Id;
      qrUsuarioLogin.ParamByName('STATUS').AsInteger := DM.Status;
      qrUsuarioLogin.ParamByName('NOME').AsString := DM.Nome;
      qrUsuarioLogin.ParamByName('PROFISSAO').AsString := DM.Profissao;
      qrUsuarioLogin.ParamByName('TELEFONE').AsString := DM.Telefone;
      qrUsuarioLogin.ParamByName('LOGADO').AsInteger := DM.Logado;
    end;

    DM.Banco.Connection.Commit;

    Principal.Show;
  except
    on e: Exception do
    begin
      ShowMessage('Erro ao fazer o login' + e.Message);
      DM.Banco.Connection.Rollback;
    end;
  end;
end;
end.
