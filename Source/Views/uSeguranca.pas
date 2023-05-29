unit uSeguranca;

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
  TSeguranca = class(TForm)
    pnContent: TRectangle;
    RoundRectAnimation: TRoundRect;
    qrUsuariosDeletar: TUniQuery;
    dsUsuariosdeletar: TDataSource;
    qrUsuariosDeletarSTATUS: TIntegerField;
    Layout1: TLayout;
    LayoutAlterar: TLayout;
    pnMudarSenha: TRectangle;
    LayoutMudarSenha: TLayout;
    LayoutMudar: TLayout;
    RoundRectSenha: TRoundRect;
    LBAlterar: TLabel;
    LayoutLinha: TLayout;
    LayoutLabelAlterar: TLayout;
    LayoutAlterarCenter: TLayout;
    LBAlterarSenha: TLabel;
    Layout2: TLayout;
    LayoutDeletar: TLayout;
    pnDeletarConta: TRectangle;
    LayoutLabelPergunta: TLayout;
    LayoutApagarConta: TLayout;
    LBApagarConta: TLabel;
    LayoutDel: TLayout;
    LayoutAlinharDelete: TLayout;
    LBDeletarConta: TLabel;
    LayoutBotaoDel: TLayout;
    LayoutEspacamentoBotaoDel: TLayout;
    LayoutBtaoDel: TLayout;
    RoundRectDeletar: TRoundRect;
    pnDigitar: TRectangle;
    edtDeletar: TEdit;
    LayoutEspacamento: TLayout;
    LayoutTop: TLayout;
    LayoutNomeCenter: TLayout;
    LBNome: TLabel;
    LayoutNomeSeg: TLayout;
    LBDados: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RoundRectDeletarClick(Sender: TObject);
  private
    procedure DeletarUsuarioPorSenha;
  public
    { Public declarations }
  end;

var
  Seguranca: TSeguranca;

implementation

uses
  DM, uPrincipal, uLibMobile, uPerfil, uAdicionarServicos, uSobre;

{$R *.fmx}

procedure TSeguranca.DeletarUsuarioPorSenha;
begin
  try
    qrUsuariosDeletar.Close;
    qrUsuariosDeletar.ParamByName('ID').AsInteger := DM.Id;
    qrUsuariosDeletar.Open;
    qrUsuariosDeletar.Edit;
    if edtDeletar.Text = '' then
      ShowMessage('Erro ao desativar usuario!');
      if (qrUsuariosDeletar.State in [dsEdit,dsInsert]) then
      begin
        qrUsuariosDeletarSTATUS.Value := 1;
      end;
    Salva(qrUsuariosDeletar);
  except
  on e: Exception do
    begin
      DM.Banco.Connection.Rollback;
      ShowMessage('Erro ao excluir usuário: ' + E.Message);
    end;
end;
end;

procedure TSeguranca.FormShow(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;

  RoundRectanimation.Position.Y := -100;
  RoundRectanimation.Position.X := 0;
end;

procedure TSeguranca.RoundRectDeletarClick(Sender: TObject);
begin
  DeletarUsuarioPorSenha;
end;
end.


