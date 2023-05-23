unit uPrincipal;

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
  FMX.Ani,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Layouts,
  uSobre, Data.DB, MemDS, DBAccess, Uni, FMX.Effects;

type
  TPrincipal = class(TForm)
    pnContent: TRectangle;
    LayoutFooter: TLayout;
    pnBotoes: TRectangle;
    LayoutIcones: TLayout;
    ImagePerfil: TImage;
    ImageAddServicos: TImage;
    ImageHome: TImage;
    ImageCategorias: TImage;
    ImagePesquisa: TImage;
    pnSubMenu: TRectangle;
    LayoutSubMenu: TLayout;
    LayoutImagemPerfil: TLayout;
    pnImagem: TRoundRect;
    LayoutVerPerfil: TLayout;
    pnBotaoPerfil: TRoundRect;
    LBVER: TLabel;
    LayoutNomePro: TLayout;
    LayoutNomes: TLayout;
    LBNome: TLabel;
    LBProfissao: TLabel;
    LayoutInfo: TLayout;
    LayoutAddServicos: TLayout;
    LBAddServico: TLabel;
    LayoutDados: TLayout;
    LBDadosPessoais: TLabel;
    LayoutSeguranca: TLayout;
    LBSeguranca: TLabel;
    LayoutLocalizao: TLayout;
    LBLocalizacao: TLabel;
    LayoutCategorias: TLayout;
    LBCategorias: TLabel;
    LayoutSobre: TLayout;
    LBSobre: TLabel;
    FloatAnimation: TFloatAnimation;
    LayoutHeader: TLayout;
    pnPesquisaMenu: TRectangle;
    LayoutPesquisaMenu: TLayout;
    RoundRectPesquisa: TRoundRect;
    LayoutMenuMensagem: TLayout;
    ImageMensagem: TImage;
    ImageMenu: TImage;
    pnLinhaCategoria: TRectangle;
    pnLinhaAdd: TRectangle;
    pnLinhaDados: TRectangle;
    pnLinhaSeguranca: TRectangle;
    pnLinhaLocalizacao: TRectangle;
    pnLinhaSobre: TRectangle;
    Timer: TTimer;
    ScrollImage: THorzScrollBox;
    ShadowEffect1: TShadowEffect;
    LayoutContentCenter: TLayout;
    LayoutImg: TLayout;
    pnProf: TRectangle;
    ImageProfile: TImage;
    pnProfissao: TRectangle;
    LayoutNomeProf: TLayout;
    LBProfissaoCarousel: TLabel;
    LayoutPopulares: TLayout;
    LayoutNomePopulares: TLayout;
    Label1: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    HorzScrollBox1: THorzScrollBox;
    qrListar: TUniQuery;
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
    procedure FloatAnimationFinish(Sender: TObject);
    procedure ImageMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LBSobreClick(Sender: TObject);
    procedure ImagePerfilClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure LBSegurancaClick(Sender: TObject);
    procedure ImageAddServicosClick(Sender: TObject);
    procedure LBAddServicoClick(Sender: TObject);
    procedure ImagePesquisaClick(Sender: TObject);
    procedure LBVERClick(Sender: TObject);
  private
    FSobre: TSobre;
  public
    procedure OpenMenu();
    procedure CloseMenu();
    procedure Menu();
  end;

var
  Principal: TPrincipal;

implementation

uses
  DM, uCadastroUsuario, uPerfil, uAdicionarServicos, uSeguranca, uBuscarServicos, uHelpers;

{$R *.fmx}

procedure TPrincipal.Menu();
var
  larg_tela : integer;
begin
  {$IFDEF ANDROID}
  larg_tela := Screen.width;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
  larg_tela := Principal.Width;
  {$ENDIF}
  with Principal do
  begin
    if not FloatAnimation.Running then
    begin
      if (larg_tela < 600) and (pnSubMenu.Width > 0) then
      begin
        CloseMenu;
      end;

      if (larg_tela >= 600) and (pnSubMenu.Width = 0) then
      begin
        OpenMenu;
      end;
    end;
  end;
end;

procedure TPrincipal.OpenMenu();
begin
  with Principal do
  begin
    FloatAnimation.Inverse := false;
    FloatAnimation.Start;
    pnSubMenu.AnimateFloat('Opacity', 1, 0.4);
    pnSubMenu.Position.X := Width;
    Timer.Enabled := True;
    pnSubMenu.Tag := 1;
  end;
end;

procedure TPrincipal.TimerTimer(Sender: TObject);
begin
  if pnSubMenu.Position.X > pnSubMenu.Width then
    pnSubMenu.Position.X := pnSubMenu.Position.X - 10
  else
    Timer.Enabled := False;
end;

procedure TPrincipal.CloseMenu();
begin
  with Principal do
  begin
    FloatAnimation.Inverse := true;
    FloatAnimation.Start;
    pnSubMenu.AnimateFloat('Opacity', 0, 0.4);
    pnSubMenu.Tag := 0;
  end;
end;

procedure TPrincipal.FloatAnimationFinish(Sender: TObject);
begin
  if Principal.Width < 600 then
  begin
    ImageMenu.AnimateFloat('Opacity', 1, 0.2);
  end
  else
  begin
    ImageMenu.AnimateFloat('Opacity', 1, 0.2);
  end;
end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
  DM.Banco.qrUsuariosPSQ.Close;
  DM.Banco.qrUsuariosPSQ.ParamByName('ID').AsInteger := DM.Id;
  DM.Banco.qrUsuariosPSQ.Open;
  LBNome.Text := DM.Banco.qrUsuariosPSQNOME.AsString;
  LBProfissao.Text := DM.Banco.qrUsuariosPSQPROFISSAO.AsString;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  with Principal do
  begin
    pnSubMenu.Width := 0;
    FloatAnimation.StartValue := 0;
    FloatAnimation.StopValue := 200; 
    FloatAnimation.Inverse := false;
  end;
  LayoutImg := TLayout.Create(Self);
  LayoutImg.Parent := Self;
  LayoutImg.Align := TAlignLayout.Client;
  LBProfissaoCarousel.Text := DM.Banco.qrUsuariosPSQNOME.AsString;
end;

procedure TPrincipal.FormResize(Sender: TObject);
begin
  Menu;
end;

procedure TPrincipal.FormShow(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;
  DM.Banco.qrListar.Open;
end;

procedure TPrincipal.ImageAddServicosClick(Sender: TObject);
begin
  CadastroUsuarios.Show;
end;

procedure TPrincipal.ImageMenuClick(Sender: TObject);
begin
  if Principal.pnSubMenu.Tag = 0 then
  begin
    OpenMenu;
  end else
  begin
    CloseMenu;
  end;
end;

procedure TPrincipal.ImagePerfilClick(Sender: TObject);
begin
  Perfil.Show;
end;

procedure TPrincipal.ImagePesquisaClick(Sender: TObject);
begin
  BuscarServicos.Show;
end;

procedure TPrincipal.LBAddServicoClick(Sender: TObject);
begin
  AdicionarServicos.Show;
end;

procedure TPrincipal.LBSegurancaClick(Sender: TObject);
begin
  Seguranca.Show;
end;

procedure TPrincipal.LBSobreClick(Sender: TObject);
begin
  FSobre := TSobre.Create(Self);
  FSobre.Show;
end;

procedure TPrincipal.LBVERClick(Sender: TObject);
begin
  Perfil.Show;
end;

end.
