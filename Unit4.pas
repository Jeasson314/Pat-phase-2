unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,dmChess_u, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls,Procedures;

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
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure encryption(password: string);
  private
    { Private declarations }
  public
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var storage:textfile;
    //loginpassword,loginusername:string;
begin
assignfile(storage,'/textfiles/username.txt');

end;

procedure TForm4.Button2Click(Sender: TObject);
var storage:textfile;
    username,password:string;
begin
username:=inputbox('Username','Please input username',' ');
password:=inputbox('Password','Please input password',' ');
encryption(password);

end;


procedure encryption(password: string);
var vlength,loop,key,asciiNum:integer;
    Npassword:string;
begin
  vlength:=length(password);
  key:=(round(vlength));

  for loop := 1 to vlength do
    asciiNum :=ord(password[loop]);
    Npassword:=Npassword +chr(asciiNum+key);
 password:=Npassword;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin

label1.BringToFront;
DBMatch.Enabled:=false;
DBContestants.Enabled:=false;
end;

end.
