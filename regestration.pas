unit regestration;

interface

uses
  Windows,strutils, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls,dmChess_u, StdCtrls, ComCtrls, Buttons;

type
  TRegister_form = class(TForm)
    edtFirstname: TEdit;
    edtLastName: TEdit;
    Register: TBitBtn;
    Birthday: TDateTimePicker;
    Memebership: TCheckBox;
    edtPassword: TEdit;
    edtEmail: TEdit;
    Image1: TImage;
    tlabel1: TLabel;
    tlabel2: TLabel;
    tlabel3: TLabel;
    tlabel4: TLabel;
    tlaber5: TLabel;
    tlabel7: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure RegisterClick(Sender: TObject);
    procedure validation();
  private
    { Private declarations }
  public
    email,password,lastname,firstname:string;
    birthdaydate:tdate;
    membership:boolean;
  end;

var
  Register_form: TRegister_form;
  emailiscorrect:boolean;
implementation

{$R *.dfm}

procedure TRegister_form.FormActivate(Sender: TObject);
begin
memebership.Color:=clCream;
end;

procedure TRegister_form.RegisterClick(Sender: TObject);
begin
firstname:=edtfirstname.Text;
lastname:=edtlastname.Text;
password:=edtPassword.Text;
email:=edtEmail.Text;
birthdaydate:=birthday.Date;
membership:=memebership.Checked;
validation();

end;

procedure TRegister_form.validation;

begin
if containstext('@,.',email) then
emailiscorrect:=true;

end;

end.
