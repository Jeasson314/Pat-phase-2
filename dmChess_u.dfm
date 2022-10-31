object dmchess: Tdmchess
  OldCreateOrder = False
  Height = 361
  Width = 441
  object ConChess: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DBchess.mdb;Mode=Re' +
      'adWrite;Persist Security Info=False;Jet OLEDB:System database=""' +
      ';Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet O' +
      'LEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:G' +
      'lobal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Je' +
      't OLEDB:New Database Password="";Jet OLEDB:Create System Databas' +
      'e=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Lo' +
      'cale on Compact=False;Jet OLEDB:Compact Without Replica Repair=F' +
      'alse;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 80
  end
  object tblregistration: TADOTable
    Active = True
    Connection = ConChess
    CursorType = ctStatic
    TableDirect = True
    TableName = 'registration'
    Left = 144
    Top = 32
  end
  object Dsregest: TDataSource
    DataSet = tblregistration
    Left = 224
    Top = 40
  end
  object matchresults: TADOTable
    Active = True
    Connection = ConChess
    CursorType = ctStatic
    TableDirect = True
    TableName = 'matchresults'
    Left = 136
    Top = 112
  end
  object Dsuser: TDataSource
    DataSet = matchresults
    Left = 216
    Top = 104
  end
  object tblOrganiser: TADOTable
    Active = True
    Connection = ConChess
    CursorType = ctStatic
    TableName = 'organiser_regestration'
    Left = 128
    Top = 168
  end
  object DsOrganiser: TDataSource
    DataSet = tblOrganiser
    Left = 216
    Top = 184
  end
end
