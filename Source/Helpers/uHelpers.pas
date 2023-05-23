unit uHelpers;

interface

uses
  FMX.Ani,
  FMX.Layouts,
  FMX.Types,
  FMX.TabControl,
  FMX.Objects,
  FMX.Effects,
  FMX.StdCtrls,
  Data.DB,
  System.UITypes,
  System.SysUtils;

type
  TLayoutHelper = class helper for TLayout
    procedure Slide(ADataSet: TDataSet);
    procedure ProximoSlide(Sender: TObject);
    procedure AnteriorSlide(Sender: TObject);
  end;

implementation

uses
  DM;

{ TLayoutHelper }

procedure TLayoutHelper.AnteriorSlide(Sender: TObject);
begin

end;

procedure TLayoutHelper.ProximoSlide(Sender: TObject);
begin

end;

procedure TLayoutHelper.Slide(ADataSet: TDataSet);
var
  TabSlide: TTabControl;
  TabItem: TTabItem;
  Fundo: TRectangle;
  Proximo, Anterior: TSpeedButton;
  Sombra: TShadowEffect;
  LBProfissaoCarousel: TLabel;
begin
  ADataSet.Open;
  Self.BeginUpdate;

  TabSlide := TTabControl.Create(Self);
  Self.AddObject(TabSlide);
  TabSlide.Align := TAlignLayout.Client;
  TabSlide.TabPosition := TTabPosition.None;
  TabSlide.Name := Self.Name+'qrListar';

  ADataSet.First;

  while not ADataSet.Eof do
  begin
    TabItem := TTabItem.Create(TabSlide);
    TabItem.Text := 'qrListar' + IntToStr(ADataSet.RecNo);

    Fundo := TRectangle.Create(TabItem);
    TabItem.AddObject(Fundo);
//    Fundo.Fill.Color := TAlphaColorRec.White;
//    Fundo.Stroke.Color := TAlphaColorRec.Black;
//    Fundo.Align := TAlignLayout.Client;
//    Fundo.Margins.Top := 0;
//    Fundo.Margins.Left := 0;
//    Fundo.Margins.Right := 0;
//    Fundo.Margins.Bottom := 0;

    LBProfissaoCarousel.Text := DM.Banco.qrUsuariosPSQNOME.AsString;

//    Fundo.YRadius := 5;
//    Fundo.XRadius := 5;
//
//    Sombra := TShadowEffect.Create(Fundo);
//    Fundo.AddObject(Sombra);
//    Sombra.Distance := 0.1;
//    Sombra.Opacity := 0.1;

    TabSlide.AddObject(TabItem);
    ADataSet.Next;
  end;

  Self.EndUpdate;
end;

end.
