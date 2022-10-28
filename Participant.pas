unit Participant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dmchess_u, Grids, DBGrids,login_form;

type
  TParticipant_form = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Participant_form: TParticipant_form;

implementation

{$R *.dfm}

procedure TParticipant_form.FormCreate(Sender: TObject);
var first_name,last_name:string;
begin
WHILE (dmchess.tblregistration.Locate('username',login.loginusername,[])=true) do
begin
with dmChess do
begin
first_name:=tblregistration['first_name'];
last_name:=tblregistration['last_name'];

matchresults.Filtered:=false;
matchresults.Filter:='first_name_white:='+quotedstr('James')or 'last_name:=Easson';
matchresults.Filter:='first_name_black:='+quotedstr('James')or 'first_last_name:=Easson';
matchresults.Filtered:=true;
end;
end;
end;

end.
