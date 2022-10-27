unit organiser;

interface

uses
  Windows, Messages, SysUtils, Variants,dmChess_u, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Buttons;

type
  TFOrganiser = class(TForm)
    DBregestration: TDBGrid;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    btnSort: TButton;
    CBsort: TComboBox;
    Label2: TLabel;
    firstnamecheck: TCheckBox;
    Lastnamecheck: TCheckBox;
    Birthday: TCheckBox;
    Members: TCheckBox;
    Wins: TCheckBox;
    Loses: TCheckBox;
    Draw: TCheckBox;
    Report: TLabel;
    btnReport: TButton;
    CBreport: TComboBox;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Edtsearch: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnFilter: TBitBtn;
    procedure btnSortClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrganiser: TFOrganiser;

implementation

{$R *.dfm}

procedure TFOrganiser.btnFilterClick(Sender: TObject);
var search:string;
begin
search:=edtsearch.Text;
with dmchess do
//dmChess.matchresults.Filtered:=false;
//dmChess.matchresults.Filtered:='first_name_white=' + quotedstr(search);
//dmChess.matchresults.Filtered:='first_name_black=' + quotedstr(search);
//dmChess.matchresults.Filtered:=true;
end;

procedure TFOrganiser.btnReportClick(Sender: TObject);
var sqlText:string;
begin
if firstnamecheck=true then
sqlText:='first_name,';

Dmchess.dblength.SQL
end;


procedure TFOrganiser.btnSortClick(Sender: TObject);
var sort:string;
begin
sort:=CBsort.Text;
dmChess.tblregistration.Sort:=sort
end;

procedure TFOrganiser.FormCreate(Sender: TObject);
begin
dmchess.matchresults.Sort:='round_number DESC,board_number DESC';
end;

end.
