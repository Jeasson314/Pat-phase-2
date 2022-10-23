unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,dmChess_u, Grids, DBGrids,regestration,ExtCtrls, DBCtrls, StdCtrls,
  pngimage;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure encryption(password: string);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  password:string;
  result:string;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses login_form;

procedure TForm4.btnCreateClick(Sender: TObject);
var storage:textfile;
    username:string;
    usernamecheck:boolean;
begin
username:=inputbox('Username','Please input username','');
usernamecheck:=false;
with dmChess do
  begin
  tblOrganiser.First;
  while (not tblorganiser.Eof) AND (usernamecheck =false) do
  begin
    if tblOrganiser['username']=username then
    begin
      showmessage('User already exist. Please use another');
      usernamecheck:=true;
      exit;
    end
  else tblorganiser.Next;
  end;

  end;

password:=inputbox('Password','Please input password','');
assignfile(storage,'.\textfiles\username.txt');
append(storage);
encryption(password);
writeln(storage,username+','+result);
dmChess.tblOrganiser.Insert;
dmChess.tblOrganiser['username']:=username;
dmChess.tblOrganiser['password']:=result;
dmChess.tblOrganiser.Post;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
 login.Show
end;

procedure TForm4.encryption(password: string);
var vlength,loop,asciiNum:integer;
     Npassword:string;
begin
  vlength:=length(password);

  for loop := 1 to vlength do
    begin
    asciiNum :=ord(password[loop]);
    Npassword:=Npassword +chr(asciiNum+vlength);
    end;
result:=Npassword;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
//Register_form.Show;
//login.RegisterClick(Sender);
button2.Enabled:=false;
button3.Enabled:=false;
end;

end.
