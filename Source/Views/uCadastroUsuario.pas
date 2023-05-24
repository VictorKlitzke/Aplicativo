unit uCadastroUsuario;

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
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Layouts,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TCadastroUsuarios = class(TForm)
    LayoutCadastro: TLayout;
    ImgHifuzion: TImage;
    LayoutCampos: TLayout;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtTelefone: TEdit;
    edtProfissao: TEdit;
    edtSenha: TEdit;
    LayoutCadastroUsers: TLayout;
    btnCadastro: TButton;
    LayoutFinalTela: TLayout;
    LayoutRedeSociais: TLayout;
    LayoutSociais: TLayout;
    ImgInstagram: TImage;
    Image1: TImage;
    ImgLinkdlin: TImage;
    pnContent: TRectangle;
    qrUsuarioAdicionar: TUniQuery;
    dsUsuarios: TDataSource;
    qrUsuarioAdicionarID: TIntegerField;
    qrUsuarioAdicionarNOME: TStringField;
    qrUsuarioAdicionarEMAIL: TStringField;
    qrUsuarioAdicionarTELEFONE: TStringField;
    qrUsuarioAdicionarSENHA: TStringField;
    qrUsuarioAdicionarPROFISSAO: TStringField;
    qrUsuarioAdicionarSTATUS: TIntegerField;
    LayoutTelaLogin: TLayout;
    LayoutTelaLoginn: TLayout;
    LayoutClicarLogin: TLayout;
    LBLogin: TLabel;
    Layout5: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure LBLoginClick(Sender: TObject);
  private
    procedure CamposObrigadorios;
    procedure CadastrarUsuarios;
    function ValidarEmail(const Email: string): Boolean;
    function ValidarTelefone(Telefone: string): Boolean;
  public
    { Public declarations }
  end;

var
  CadastroUsuarios: TCadastroUsuarios;

implementation

uses
  DM, uPrincipal, uLoginUsuario;

{$R *.fmx}

procedure TCadastroUsuarios.btnCadastroClick(Sender: TObject);
begin
  CadastrarUsuarios;
end;

procedure TCadastroUsuarios.CadastrarUsuarios;
begin
  DM.Banco.Connection.StartTransaction;
  try
    qrUsuarioAdicionar.Insert;
    qrUsuarioAdicionar.FieldByName('nome').AsString := edtNome.Text;
    qrUsuarioAdicionar.FieldByName('email').AsString := edtEmail.Text;
    qrUsuarioAdicionar.FieldByName('telefone').AsString := edtTelefone.Text;
    qrUsuarioAdicionar.FieldByName('profissao').AsString := edtProfissao.Text;
    qrUsuarioAdicionar.FieldByName('senha').AsString := edtSenha.Text;
    qrUsuarioAdicionar.FieldByName('status').AsInteger := 0;
    qrUsuarioAdicionar.Post;

    CamposObrigadorios;

    if not ValidarEmail(edtEmail.Text) then
    begin
      ShowMessage('Endereço de e-mail inválido!');
      Exit;
    end;

    if not ValidarTelefone(edtTelefone.Text) then
    begin
      ShowMessage('Telefone inválido!');
      Exit;
    end;

    DM.Banco.Connection.Commit;

    DM.Id := qrUsuarioAdicionarID.AsInteger;
    DM.Status := qrUsuarioAdicionarSTATUS.AsInteger;
    DM.Nome := qrUsuarioAdicionarNOME.AsString;
    DM.Telefone := qrUsuarioAdicionarTELEFONE.AsString;
    DM.Profissao := qrUsuarioAdicionarPROFISSAO.AsString;

    Principal.Show;

  except
    on e: Exception do
    begin
      ShowMessage('Erro ao cadastrar usuário: ' + E.Message);
    end;

  end;
  qrUsuarioAdicionar.Insert;
end;

procedure TCadastroUsuarios.CamposObrigadorios;
begin
  if (Trim(edtNome.Text) = '')
    or (Trim(edtEmail.Text) = '')
    or (Trim(edtTelefone.Text) = '')
    or (Trim(edtProfissao.Text) = '')
    or (Trim(edtSenha.Text) = '')
  then
  begin
    ShowMessage('Todos os campos são obrigatórios.');
    Exit;
  end;
end;

procedure TCadastroUsuarios.FormCreate(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;
  qrUsuarioAdicionar.Open;
end;

procedure TCadastroUsuarios.LBLoginClick(Sender: TObject);
begin
  if qrUsuarioAdicionarSTATUS.AsInteger = 1 then
  begin
    Exit
  end else
  begin
    uLoginUsuario.LoginUsuario.Show;
  end;
end;
function TCadastroUsuarios.ValidarEmail(const Email: string): Boolean;
const
  AtSymbol = '@';
var
  I, LEmail: Integer;
begin
  Result := False;

  LEmail := Pos(AtSymbol, Email);
  if LEmail = 0 then
    Exit;

  if (LEmail < 2) or (LEmail >= Length(Email)) then
    Exit;

  for I := LEmail + 1 to Length(Email) do
  begin
    if not (Email[I] in ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.']) then
      Exit;
  end;

  Result := True;
end;
function TCadastroUsuarios.ValidarTelefone(Telefone: string): Boolean;
var
  I, LTelefone: Integer;
begin

  if LTelefone = Null then
    Exit;

  for I := LTelefone + 1 to Length(Telefone) do
  begin
    if not (Telefone[I] in ['0'..'9']) then
      Exit;
  end;
end;
end.
