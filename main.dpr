program main;

uses
  Forms,
  Unit4 in 'Unit4.pas' {Form4},
  dmChess_u in 'dmChess_u.pas' {dmchess: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdmchess, dmchess);
  Application.Run;
end.
