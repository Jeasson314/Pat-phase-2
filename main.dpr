program main;

uses
  Forms,
  Unit4 in 'Unit4.pas' {Form4},
  login_form in 'login_form.pas' {login},
  dmChess_u in 'dmChess_u.pas' {dmchess: TDataModule},
  regestration in 'regestration.pas' {Register_form};

{login}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdmchess, dmchess);
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(TRegister_form, Register_form);
  Application.Run;
end.
