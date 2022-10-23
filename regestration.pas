unit regestration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, Buttons;

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
    procedure FormActivate(Sender: TObject);
    procedure RegisterClick(Sender: TObject);
    procedure valadation();
  private
    { Private declarations }
  public
    email,password,lastname,firstname:string;
    birthdaydate:tdate;
    membership:boolean;
  end;

var
  Register_form: TRegister_form;

implementation

{$R *.dfm}

procedure TRegister_form.FormActivate(Sender: TObject);
begin
memebership.Color:=clWhite;
end;

procedure TRegister_form.RegisterClick(Sender: TObject);
begin
firstname:=edtfirstname.Text;
lastname:=edtlastname.Text;
password:=edtPassword.Text;
email:=edtEmail.Text;
birthdaydate:=birthday.Date;
membership:=memebership.State;
end;

procedure TRegister_form.valadation;
begin
if
end;

end.
