unit dmChess_u;

interface

uses
  SysUtils, Classes, DB, ADODB, DBTables;

type
  Tdmchess = class(TDataModule)
    ConChess: TADOConnection;
    tblregistration: TADOTable;
    Dsregest: TDataSource;
    matchresults: TADOTable;
    Dsuser: TDataSource;
    tblOrganiser: TADOTable;
    DsOrganiser: TDataSource;
    reportgen: TQuery;
    RegistrationDB: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmchess: Tdmchess;

implementation
{$R *.dfm}

end.
