unit uPerfil;

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
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TPerfil = class(TForm)
    pnHeader: TRectangle;
    LayoutHeader: TLayout;
    pnImg: TRectangle;
    LayoutImgPerfil: TLayout;
    pnImgPerfil: TRectangle;
    Layoutlinha: TLayout;
    pnLinha: TRectangle;
    LayoutInfo: TLayout;
    LayoutInfoPessoais: TLayout;
    LBNome: TLabel;
    LBProfissao: TLabel;
    pnFooter: TRectangle;
    LayoutTodosResumos: TLayout;
    Layoutinformacoes: TLayout;
    LayoutRes: TLayout;
    pnResumo: TRectangle;
    LayoutInfoResumo: TLayout;
    LayoutDados: TLayout;
    pnDadosResumo: TRectangle;
    LayoutLabels: TLayout;
    LayoutResumosServicos: TLayout;
    pnServices: TRectangle;
    LayoutBotaoAdd: TLayout;
    LayoutAdd: TLayout;
    pnBotao: TRoundRect;
    LBAddServices: TLabel;
    LBResumoPro: TLabel;
    Layout3: TLayout;
    LayoutTelefone: TLayout;
    LayoutValor: TLayout;
    LayoutEmail: TLayout;
    LBTelefone: TLabel;
    LBEmail: TLabel;
    LBValor: TLabel;
    LayoutServicos: TLayout;
    LayoutServices: TLayout;
    Layout6: TLayout;
    LBResumoServicos: TLabel;
    LBVerServicos: TLabel;
    RoundRectServ: TRoundRect;
    pnContent: TRectangle;
    dsUsuariosInformacoes: TDataSource;
    pnInfo: TRectangle;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Perfil: TPerfil;

implementation

uses
  DM;

{$R *.fmx}

procedure TPerfil.FormActivate(Sender: TObject);
begin
  DM.Banco.qrUsuariosPSQ.Close;
  DM.Banco.qrServicosPSQ.Close;
  DM.Banco.qrUsuariosPSQ.ParamByName('ID').AsInteger := 6;
  DM.Banco.qrUsuariosPSQ.Open;
  DM.Banco.qrServicosPSQ.Open;
  LBProfissao.Text := DM.Banco.qrUsuariosPSQPROFISSAO.AsString;
  LBNome.Text := DM.Banco.qrUsuariosPSQNOME.AsString;

  LBTelefone.Text := DM.Banco.qrUsuariosPSQTELEFONE.AsString;
  LBEmail.Text := DM.Banco.qrUsuariosPSQEMAIL.AsString;
  LBValor.Text := DM.Banco.qrServicosPSQVALOR_SERVICO.AsString;
end;

end.
