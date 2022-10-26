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
dmChess.matchresults.Filtered:=false;
dmChess.matchresults.Filtered:='first_name_white=' + quotedstr(search);
dmChess.matchresults.Filtered:='first_name_black=' + quotedstr(search);
dmChess.matchresults.Filtered:=true;
end;

procedure TFOrganiser.btnReportClick(Sender: TObject);
var firstcheck,lastcheck,Birthdaycheck,membercheck,wincheck,losescheck,drawcheck:boolean;
    report:textfile;
    selected:string;
    afirstname,alastname,aemail,abirthday,apassword,member,ausername,adate:array of string;
    awin,alose,adraw:array of integer;
    sline:string;
    loop,alength:integer;
begin
firstcheck:=firstnamecheck.Checked;
lastcheck:=lastnamecheck.Checked;
Birthdaycheck:=Birthday.Checked;
membercheck:=Members.Checked;
wincheck:=Wins.Checked;
drawcheck:=Draw.Checked;
losescheck:=Loses.Checked;
selected:=CBreport.Text;
alength:=dmchess.dblength.SQL.Add('SELECT COUNT(*) FROM tblreges');
setlength(afirstname,alength);
setlength(alastname,alength);
setlength(abirthday,alength);
setlength(aemail,alength);
setlength(apassword,alength);
dmChess.tblregistration.First;
while not dmChess.tblregistration.Eof do
begin
loop:=1;
dmChess.tblregistration.Next;
if firstcheck=true then
begin
afirstname[loop]:=dmChess.tblregistration['first_name'];
showmessage(afirstname[loop]);
end;
if lastcheck=true then begin
alastname[loop]:=dmChess.tblregistration['last_name'];
end;
if birthdaycheck=true then begin
aBirthday[loop]:=dmChess.tblregistration['birthday'];
end;
if membercheck=true then begin
member[loop]:=dmChess.tblregistration['member'];
end;
if wincheck=true then begin
awin[loop]:=dmChess.tblregistration['wins'];
end;
if losescheck=true then begin
alose[loop]:=dmChess.tblregistration['loses'];
end;
if drawcheck=true then begin
adraw[loop]:=dmChess.tblregistration['draw'];
end;
inc(loop);
end;

if selected='Text files' then
begin
loop:=0;
assignfile(report,'.\Reports\Report.txt');
rewrite(report);
alength:=length(afirstname);
while not loop=alength do
begin
inc(loop);
sline:=afirstname[loop]+','+alastname[loop]+','+abirthday[loop]+','+member[loop]+','+inttostr(awin[loop])+','+inttostr(alose[loop])+','+inttostr(adraw[loop]);
append(report);
writeln(report);
end;
closefile(report);
end;

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
