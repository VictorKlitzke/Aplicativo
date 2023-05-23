unit uBotaoLogar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TBotaoLogar = class(TForm)
    pnContent: TRectangle;
    LBLogar: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BotaoLogar: TBotaoLogar;

implementation

{$R *.fmx}

end.
