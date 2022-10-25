unit organiser;

interface

uses
  Windows, Messages, SysUtils, Variants,dmChess_u, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFOrganiser = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrganiser: TFOrganiser;

implementation

{$R *.dfm}

end.
