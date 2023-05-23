unit uBuscarServicos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts;

type
  TBuscarServicos = class(TForm)
    pnContent: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    pnInfoProfissao: TRectangle;
    Rectangle3: TRectangle;
    ImgProf: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarServicos: TBuscarServicos;

implementation

{$R *.fmx}

end.
