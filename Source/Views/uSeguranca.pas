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
  FMX.Edit, Data.DB, MemDS, DBAccess, Uni, FMX.Ani;

type
  TSeguranca = class(TForm)
    pnContent: TRectangle;
    RoundRectanimation: TRoundRect;
    LayoutAlterar: TLayout;
    pnMudarSenha: TRectangle;
    pnDeletarConta: TRectangle;
    LayoutMudarSenha: TLayout;
    LayoutMudar: TLayout;
    RoundRectSenha: TRoundRect;
    LBAlterar: TLabel;
    LayoutLinha: TLayout;
    LayoutLabelPergunta: TLayout;
    LayoutDeletar: TLayout;
    LayoutDel: TLayout;
    LayoutAlinharDelete: TLayout;
    LayoutBotaoDel: TLayout;
    pnDigitar: TRectangle;
    LBApagarConta: TLabel;
    LBDeletarConta: TLabel;
    RoundRectDeletar: TRoundRect;
    LayoutBtaoDel: TLayout;
    LayoutEspacamentoBotaoDel: TLayout;
    LayoutEspacamento: TLayout;
    LayoutLabelAlterar: TLayout;
    LayoutAlterarCenter: TLayout;
    LBAlterarSenha: TLabel;
    LayoutApagarConta: TLayout;
    edtDeletar: TEdit;
    qrUsuariosDeletar: TUniQuery;
    dsUsuariosdeletar: TDataSource;
    qrUsuariosDeletarSTATUS: TIntegerField;
    LayoutCenter: TLayout;
    FloatKeyAnimation: TFloatKeyAnimation;
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
  DM, uPrincipal, uLibMobile;

{$R *.fmx}

procedure TSeguranca.DeletarUsuarioPorSenha;
begin
  try
    qrUsuariosDeletar.Close;
    qrUsuariosDeletar.ParamByName('ID').AsInteger := 46;
    qrUsuariosDeletar.Open;
    qrUsuariosDeletar.Edit;
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
end;

procedure TSeguranca.RoundRectDeletarClick(Sender: TObject);
begin
  DeletarUsuarioPorSenha;
end;

end.


