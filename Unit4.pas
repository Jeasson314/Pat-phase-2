unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,dmChess_u, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBContestants: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    DBMatch: TDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    Firstname_login: TEdit;
    password_login: TEdit;
    btnUsername: TButton;
    Label3: TLabel;
    Label4: TLabel;
    btnCreate: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnUsernameClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure encryption(password: string);
  private
    { Private declarations }
  public
  end;

var
  Form4: TForm4;
  password,result:string;
implementation

{$R *.dfm}

procedure TForm4.btnUsernameClick(Sender: TObject);
var storage:textfile;
    loginusername:string;
    loop:integer;
begin
assignfile(storage,'.\textfiles\username.txt');
password:=password_login.Text;
loginusername:=Firstname_login.Text;
reset(storage);
encryption(password);
while not eof do
if  

end;

procedure TForm4.btnCreateClick(Sender: TObject);
var storage:textfile;
    username:string;
begin
username:=inputbox('Username','Please input username',' ');
password:=inputbox('Password','Please input password',' ');
assignfile(storage,'.\textfiles\username.txt');
append(storage);
encryption(password);
writeln(storage,username+','+result);
closefile(storage);

end;


procedure TForm4.encryption(password: string);
var vlength,loop,asciiNum:integer;
    Npassword,letter:string;
begin
  vlength:=length(password);

  for loop := 1 to vlength do
    begin
    asciiNum :=ord(password[loop]);
    showmessage(inttostr(asciiNum));
    Npassword:=Npassword +chr(asciiNum+vlength);
    showmessage(Npassword);
    end;
 result:=Npassword;
end;



procedure TForm4.FormActivate(Sender: TObject);
begin

label1.BringToFront;
DBMatch.Enabled:=false;
DBContestants.Enabled:=false;
end;

end.
