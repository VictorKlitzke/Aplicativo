unit uAdicionarServicos;

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
  FMX.StdCtrls,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Layouts,
  System.Math.Vectors,
  FMX.Controls3D,
  FMX.Layers3D;

type
  TAdicionarServicos = class(TForm)
    ScrollAdicionarServicos: TVertScrollBox;
    pnContent: TRectangle;
    LayoutCenter: TLayout;
    LayoutInfoServicos: TLayout;
    pnInfoServicos: TRectangle;
    LayoutDescriscao: TLayout;
    LayoutDes: TLayout;
    edtDescriscao: TMemo;
    LayoutLabelDescricao: TLayout;
    LayoutLBDes: TLayout;
    LBDescriscao: TLabel;
    LayoutProfissao: TLayout;
    LayoutPro: TLayout;
    edtProfissao: TEdit;
    LayoutLabelProfissao: TLayout;
    LayoutLBPro: TLayout;
    LBProfissao: TLabel;
    LayoutTelefone: TLayout;
    LayoutTel: TLayout;
    edtTelefone: TEdit;
    LayoutLabelTelefone: TLayout;
    LayoutLBtelefone: TLayout;
    LBTelefone: TLabel;
    LayoutValores: TLayout;
    LayoutLBValores: TLayout;
    LBValores: TLabel;
    LayoutInfoValores: TLayout;
    pnValores: TRectangle;
    LayoutPreencherValores: TLayout;
    LayoutValorDesconto: TLayout;
    LayoutDesconto: TLayout;
    LayoutEditlDescontos: TLayout;
    edtDesconto: TEdit;
    LayoutLabelDescontos: TLayout;
    LBDescontos: TLabel;
    LayoutValor: TLayout;
    LayoutLabelValor: TLayout;
    LBValor: TLabel;
    LayoutEditValor: TLayout;
    edtValor: TEdit;
    LayoutForma: TLayout;
    LayoutFormaPagamento: TLayout;
    LayoutLabelForma: TLayout;
    LBFormaPagamento: TLabel;
    LayoutEditForma: TLayout;
    edtFormaPagamento: TEdit;
    LayoutRegiao: TLayout;
    LayoutLBRegiao: TLayout;
    LBRegiao: TLabel;
    LayoutInfoRegiao: TLayout;
    pnRegiao: TRectangle;
    LayoutCenterRegiao: TLayout;
    LayoutBairro: TLayout;
    LayoutEditBairro: TLayout;
    edtBairro: TEdit;
    LayoutLabelBairro: TLayout;
    LBBairro: TLabel;
    LayoutCidade: TLayout;
    LayoutLabelCidade: TLayout;
    LBCidade: TLabel;
    LayoutEditCidade: TLayout;
    edtCidade: TEdit;
    LayoutEstado: TLayout;
    LayoutLabelEstado: TLayout;
    Layout3D1: TLayout3D;
    Estado: TLabel;
    LayoutEditEstado: TLayout;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure ScrollAdicionarServicosViewportPositionChange(Sender: TObject;
      const OldViewportPosition, NewViewportPosition: TPointF;
      const ContentSizeChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdicionarServicos: TAdicionarServicos;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TAdicionarServicos.FormCreate(Sender: TObject);
begin
  ScrollAdicionarServicos.ViewportPosition := PointF(ScrollAdicionarServicos.ViewportPosition.X, ScrollAdicionarServicos.ViewportPosition.Y + 10000);
end;

procedure TAdicionarServicos.ScrollAdicionarServicosViewportPositionChange(
  Sender: TObject; const OldViewportPosition,
  NewViewportPosition: TPointF;
  const ContentSizeChanged: Boolean);
begin
ScrollAdicionarServicos.ViewportPosition := PointF(ScrollAdicionarServicos.ViewportPosition.X, ScrollAdicionarServicos.ViewportPosition.Y + 10000);
end;

end.
