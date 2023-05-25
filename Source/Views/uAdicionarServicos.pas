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
  FMX.Objects, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
  FMX.Edit, FMX.Layouts;

type
  TAdicionarServicos = class(TForm)
    pnContent: TRectangle;
    LayoutCenter: TLayout;
    LayoutInfoServicos: TLayout;
    LayoutDes: TLayout;
    LayoutPro: TLayout;
    LayoutTelefone: TLayout;
    LayoutProfissao: TLayout;
    LayoutDescriscao: TLayout;
    pnInfoServicos: TRectangle;
    pnValores: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    edtProfissao: TEdit;
    edtTelefone: TEdit;
    edtDescriscao: TMemo;
    LayoutValores: TLayout;
    LayoutTel: TLayout;
    LayoutLBDes: TLayout;
    LayoutLabelDescricao: TLayout;
    LayoutLBValores: TLayout;
    LayoutLBPro: TLayout;
    LayoutLabelProfissao: TLayout;
    LayoutLBtelefone: TLayout;
    LayoutLabelTelefone: TLayout;
    LBProfissao: TLabel;
    LBDescriscao: TLabel;
    LBTelefone: TLabel;
    LBValores: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    LayoutValor: TLayout;
    LayoutDesconto: TLayout;
    LayoutValorDesconto: TLayout;
    LayoutPreencherValores: TLayout;
    LayoutInfoValores: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdicionarServicos: TAdicionarServicos;

implementation

{$R *.fmx}

end.
