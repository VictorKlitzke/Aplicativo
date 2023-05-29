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
  FMX.Layers3D,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TAdicionarServicos = class(TForm)
    qrAdicionarServicos: TUniQuery;
    LayoutContent: TLayout;
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
    edtEstado: TEdit;
    LayoutCenterEndNumero: TLayout;
    LayoutEnd: TLayout;
    LayoutLabelNumero: TLayout;
    LBEndereço: TLabel;
    edtEnd: TEdit;
    LayoutNumero: TLayout;
    LayoutLabelEnd: TLayout;
    LBNumero: TLabel;
    edtNumero: TEdit;
    LayoutBottomSalvar: TLayout;
    LayoutSalvar: TLayout;
    btnSalvar: TButton;
    procedure FormShow(Sender: TObject);
  private
    procedure SalvarDados;
  public
    { Public declarations }
  end;

var
  AdicionarServicos: TAdicionarServicos;

implementation

uses
  DM;

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TAdicionarServicos.FormShow(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;
end;

procedure TAdicionarServicos.SalvarDados;
begin
  DM.Banco.Connection.StartTransaction;
  try
    qrAdicionarServicos.Insert;
    qrAdicionarServicos.FieldByName('servico').AsString;
    qrAdicionarServicos.FieldByName('descricao').AsString;
    qrAdicionarServicos.FieldByName('valor').AsString;
    qrAdicionarServicos.FieldByName('desconto').AsString;
    qrAdicionarServicos.FieldByName('forma_pagamento').AsString;
    qrAdicionarServicos.FieldByName('estado').AsString;
    qrAdicionarServicos.FieldByName('cidade').AsString;
    qrAdicionarServicos.FieldByName('endereco').AsString;
    qrAdicionarServicos.FieldByName('bairro').AsString;
    qrAdicionarServicos.Post;
  except
    on e: Exception do
    begin
      ShowMessage('Erro ao adicionar serviço' + e.Message);
    end;
  end;
end;

end.
