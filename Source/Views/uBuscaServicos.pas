unit uBuscaServicos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts;

type
  TBuscarServicos = class(TForm)
    pnContent: TRectangle;
    GridCenter: TGridLayout;
    LayoutinfoCat: TLayout;
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
