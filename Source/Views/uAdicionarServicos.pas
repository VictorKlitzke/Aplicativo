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
    Scroll: TScrollBox;
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
    LayoutLabelBairro: TLayout;
    LayoutCidade: TLayout;
    LayoutLabelCidade: TLayout;
    LayoutEditCidade: TLayout;
    LayoutEstado: TLayout;
    LayoutLabelEstado: TLayout;
    Layout3D1: TLayout3D;
    LayoutEditEstado: TLayout;
    Estado: TLabel;
    LBCidade: TLabel;
    LBBairro: TLabel;
    Edit1: TEdit;
    edtCidade: TEdit;
    edtBairro: TEdit;
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

end.
