unit login_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs ,StdCtrls, ExtCtrls,pngimage;

type
  Tlogin = class(TForm)
    edit_username: TEdit;
    edit_password: TEdit;
    btnlogin: TButton;
    btnForgotten: TButton;
    lUsername: TLabel;
    LPassword: TLabel;
    Imageside: TImage;
    Register: TButton;
    procedure btnloginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure hello();
    procedure btnForgottenClick(Sender: TObject);
    procedure RegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  login: Tlogin;
  password,result:string;

implementation
{$R *.dfm}
 uses dmChess_u,unit4,
      regestration;
procedure Tlogin.btnForgottenClick(Sender: TObject);
begin
messagedlg('Please contact an event organiser',mtinformation,[mbOK],0);
end;

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

with dmChess do
  begin
  tblOrganiser.First;
  while (not tblorganiser.Eof) AND (username_check =false) do
  begin
    if tblOrganiser['username']=loginusername then begin
    username_check:=true;
    if tblOrganiser['password']=result then
        begin
       showmessage('Welcome '+loginusername);
       self.close;
       form4.btnOrganiser.Enabled:=true;
        end
       else
        case messagedlg('The password you have entered is incorrect,Would you like to try again? If not the program will close',mtwarning,[mbYes,mbNo],0) of
         mrYes:Messagedlg('Please try again, If you have forgotten your password press forgot password.',mtInformation,[mbOk],0,mbOk);
         mrNo:application.Terminate;
        end;
        if mesD=6 then
        begin

        end
        else

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

procedure Tlogin.hello;
begin
showmessage('hello');
end;

procedure Tlogin.RegisterClick(Sender: TObject);
begin
self.Close;
register_form.show;
end;

end.
