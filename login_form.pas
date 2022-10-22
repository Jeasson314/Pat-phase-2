unit login_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,patprocedure, StdCtrls, ExtCtrls, pngimage;

type
  Tlogin = class(TForm)
    edit_username: TEdit;
    edit_password: TEdit;
    btnlogin: TButton;
    btnForgotten: TButton;
    lUsername: TLabel;
    LPassword: TLabel;
    Imageside: TImage;
    procedure btnloginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  login: Tlogin;
  password,result:string;

implementation
 uses dmChess_u;
{$R *.dfm}

procedure Tlogin.btnloginClick(Sender: TObject);
var loginusername,result,Npassword:string;
    MesD,loop,vlength,asciiNum:integer;
    username_check:boolean;
begin
password:=edit_password.Text;
loginusername:=edit_username.Text;
if password='' then
messagedlg('No password entered',mtError,[mbOk],0,mbOk);
if loginusername='' then
messagedlg('No username entered',mtError,[mbOk],0,mbOk);

vlength:=length(password);

for loop := 1 to vlength do
    begin
    asciiNum :=ord(password[loop]);
    Npassword:=Npassword +chr(asciiNum+vlength);
    end;
result:=Npassword;

with frmdmChess do
  begin
  tblOrganiser.First;
  while (not tblorganiser.Eof) AND (username_check =false) do
  begin
    if tblOrganiser['username']=loginusername then begin
    username_check:=true;
    if tblOrganiser['password']=result then
        begin
       showmessage('Welcome '+loginusername);
       login.close;
        end
       else
        mesD:= messagedlg('The password you have entered is incorrect,Would you like to try again? If not the program will close',mtwarning,[mbYes,mbNo],0);
        if mesD=6 then
        begin
        Messagedlg('Please try again, If you have forgotten your password press forgot password.',mtInformation,[mbOk],0,mbOk);
        end
        else
        application.Terminate;
    end
    else
    tblOrganiser.Next
    end
  end;
if username_check=false then
   messagedlg('Username not found',mtError,[mbOk],0,mbOk)
end;

procedure Tlogin.FormActivate(Sender: TObject);
begin
lusername.BringToFront;
lPassword.BringToFront;
lUsername.Color:=clWhite;
lpassword.Color:=clWhite;
end;

end.
