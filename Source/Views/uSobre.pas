unit uSobre;

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
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects;

type
  TSobre = class(TForm)
    pnContent: TRectangle;
    pnLeft: TRectangle;
    LBSobreApp: TLabel;
    pnRight: TRectangle;
    LayoutSobre: TLayout;
    pnDifLeft: TRectangle;
    pnDifRight: TRectangle;
    LayoutCenter: TLayout;
    pnSobreHifuzion: TRectangle;
    LBInfo: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sobre: TSobre;

implementation

{$R *.fmx}

end.
