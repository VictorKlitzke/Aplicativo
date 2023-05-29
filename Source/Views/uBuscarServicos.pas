unit uBuscarServicos;

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
  FMX.Layouts, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TBuscarServicos = class(TForm)
    ScrollBuscarDados: TVertScrollBox;
    ListBuscarDados: TListView;
    pnContent: TRectangle;
    LayoutCenterBuscar: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    ImgProf: TImage;
    pnInfoProfissao: TRectangle;
    Image2: TImage;
    Image3: TImage;
    Layout4: TLayout;
    Image4: TImage;
    Rectangle3: TRectangle;
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
