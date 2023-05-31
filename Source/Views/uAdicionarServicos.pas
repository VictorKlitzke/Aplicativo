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
    ScrollAdicionarServicos: TVertScrollBox;
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
    edtServico: TEdit;
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
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TAdicionarServicos.btnSalvarClick(Sender: TObject);
begin
  SalvarDados;
end;

procedure TAdicionarServicos.FormCreate(Sender: TObject);
begin
  edtTelefone.Text := DM.Banco.qrUsuariosPSQTELEFONE.AsString;
end;

procedure TAdicionarServicos.FormShow(Sender: TObject);
begin
  DM.Banco.Connection.Connected := True;
end;

procedure TAdicionarServicos.SalvarDados;
begin
  DM.Banco.Connection.StartTransaction;
  try
    DM.Id := qrAdicionarServicos.FieldByName('id_usuario').AsInteger;
    qrAdicionarServicos.Insert;
    qrAdicionarServicos.FieldByName('servico').AsString := edtServico.Text;
    qrAdicionarServicos.FieldByName('descricao').AsString := edtDescriscao.Text;
    qrAdicionarServicos.FieldByName('valor').AsString := edtValor.Text;
    qrAdicionarServicos.FieldByName('desconto').AsString := edtDesconto.Text;
    qrAdicionarServicos.FieldByName('forma_pagamento').AsString := edtFormaPagamento.Text;
    qrAdicionarServicos.FieldByName('estado').AsString := edtEstado.Text;
    qrAdicionarServicos.FieldByName('cidade').AsString := edtCidade.Text;
    qrAdicionarServicos.FieldByName('endereco').AsString := edtEnd.Text;
    qrAdicionarServicos.FieldByName('bairro').AsString := edtBairro.Text;
    qrAdicionarServicos.Post;

    qrAdicionarServicos.Connection.Commit;

    DM.Servicos := qrAdicionarServicos.FieldByName('servico').AsString;
    DM.Descriscao := qrAdicionarServicos.FieldByName('descricao').AsString;
    DM.Valor := qrAdicionarServicos.FieldByName('valor').AsString;
    DM.Desconto := qrAdicionarServicos.FieldByName('desconto').AsString;
    DM.Forma_pagamento := qrAdicionarServicos.FieldByName('forma_pagamento').AsString;
    DM.Estado := qrAdicionarServicos.FieldByName('estado').AsString;
    DM.Cidade := qrAdicionarServicos.FieldByName('cidade').AsString;
    DM.Endereco := qrAdicionarServicos.FieldByName('endereco').AsString;
    DM.Bairro := qrAdicionarServicos.FieldByName('bairro').AsString;
  except
    on e: Exception do
    begin
      ShowMessage('Erro ao adicionar serviço' + e.Message);
    end;
  end;
  qrAdicionarServicos.Insert;
end;
end.
