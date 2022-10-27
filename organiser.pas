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
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Edtsearch: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnFilter: TBitBtn;
    btnReset: TButton;
    Label5: TLabel;
    btnMatch: TButton;
    Boardcolor: TRadioGroup;
    edtRound: TEdit;
    Label6: TLabel;
    edtBoardnumber: TEdit;
    Boardnumber: TLabel;
    btnUpdate: TButton;
    procedure btnSortClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnMatchClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrganiser: TFOrganiser;
  var firstnamewhite,lastnamewhite,firstnameblack,lastnameblack:string;
implementation

{$R *.dfm}

procedure TFOrganiser.btnFilterClick(Sender: TObject);
var search:string;
begin
search:=edtsearch.Text;
with dmchess do
dmChess.matchresults.Filtered:=false;
dmChess.matchresults.Filter:='first_name_white=' + quotedstr(search)+' or '+'first_name_black=' + quotedstr(search);
dmChess.matchresults.Filtered:=true;
end;

procedure TFOrganiser.btnMatchClick(Sender: TObject);

begin
firstNamewhite:=inputbox('Name','Please type in the First name of the player on White','');
lastnamewhite:=inputbox('Name','Please type in the Lastname of the player on White','');
firstnameblack:=inputbox('Name','Please type in the First name of the player on Black','');
lastnameblack:=inputbox('Name','Please type in the Last name of the player on Black','');
end;

procedure TFOrganiser.btnReportClick(Sender: TObject);
var sLine, sHeader: String;
    report : TextFile;

begin
 AssignFile(report,'.\Reports\Report.txt');
 ReWrite(report);

 if firstnamecheck.Checked then sHeader := sHeader + 'First Name' + #9;
 if lastnamecheck.Checked then sHeader := sHeader + 'Last Name' + #9;
 if Birthday.Checked then sHeader := sHeader + 'Birthday' + #9 + #9;
 if Members.Checked then sHeader := sHeader + 'Members' + #9 ;
 if Wins.Checked then sHeader := sHeader + 'Wins' + #9 ;
 if Loses.Checked then sHeader := sHeader + 'Loses' + #9 ;
 if Draw.Checked then sHeader := sHeader + 'Draw' + #9 ;

Writeln(report,sHeader);

dmChess.tblregistration.First;
while not dmChess.tblRegistration.Eof do
BEGIN
sline:='';
 if firstnamecheck.Checked then sLine := sLine + dmChess.tblRegistration['first_name'] + #9 + #9;

 if lastnamecheck.Checked then sLine := sLine + dmChess.tblRegistration['last_name'] + #9 + #9;

 if Birthday.Checked then sLine := sLine + datetostr(dmChess.tblRegistration['birthday']) + #9 + #9;

 if Members.Checked then
   if dmChess.tblregistration['member']=true then
     sLine := sLine + 'true' + #9 + #9
     else sLine := sLine + 'false' + #9 + #9;

 if Wins.Checked then sLine := sLine + inttostr(dmChess.tblRegistration['wins']) + #9;

 if Loses.Checked then sLine := sLine + inttostr(dmChess.tblRegistration['loses']) + #9;

 if Draw.Checked then sLine := sLine + inttostr(dmChess.tblRegistration['draws']) + #9;

 WriteLn(report,sline);
 dmChess.tblregistration.Next;
END;

Closefile(report);
end;


procedure TFOrganiser.btnSortClick(Sender: TObject);
var sort:string;
begin
sort:=CBsort.Text;
dmChess.tblregistration.Sort:=sort
end;

procedure TFOrganiser.btnUpdateClick(Sender: TObject);
var winner:string;
    roundnum,boardnum:integer;
begin
dmchess.matchresults.Insert;
dmchess.matchresults['first_name_white']:=firstnamewhite;
dmchess.matchresults['last_name_white']:=lastnamewhite;
dmchess.matchresults['first_name_black']:=firstnameblack;
dmchess.matchresults['last_name_black']:=lastnameblack;

//if boardcolor.items='Black' then
//dmchess.matchresults['scores_black']:=1;
//if boardcolor.Items='White' then
//dmchess.matchresults['scores_black']:=1;
//if boardcolor.Items='Draw' then
begin
dmchess.matchresults['scores_black']:=0.5;
dmchess.matchresults['scores_black']:=0.5;
end



end;

procedure TFOrganiser.btnResetClick(Sender: TObject);
begin
dmChess.matchresults.Filtered:=false;
end;

procedure TFOrganiser.FormCreate(Sender: TObject);
begin
dmchess.matchresults.Sort:='round_number DESC,board_number DESC';
end;

end.
