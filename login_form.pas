unit login_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,main,dmChess_u,patprocedure, StdCtrls;

type
  Tlogin = class(TForm)
    edit_username: TEdit;
    edit_password: TEdit;
    btnlogin: TButton;
    procedure btnloginClick(Sender: TObject);
  private
    { Private declarations }
  public
   password:string
   result:string
  end;

var
  login: Tlogin;

implementation

{$R *.dfm}

procedure Tlogin.btnloginClick(Sender: TObject);
var loginusername,vtext:string;
    loop:integer;
    username_check:boolean;
begin
password:=edit_password.Text;
loginusername:=edit_username.Text;
encryption(password);
username_check:=false;
with dmChess do
  begin
  tblOrganiser.First;
  while (not tblorganiser.Eof) AND (username_check =false) do
  begin
    if tblOrganiser['username']=loginusername then
    begin
      username_check:=true;
      if tblorganiser['password']=result then
      begin
       DBMatch.Enabled:=true;
       DBContestants.enabled:=true;
       btnCreate.Enabled:=true;
       DbNav.Enabled:=true;
      showmessage('Logged in');
      end
       else
       showmessage('Password is incorrect')
    end
  else tblorganiser.Next;
  end;

  end;

end;
end.
