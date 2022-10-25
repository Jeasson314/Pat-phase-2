object FOrganiser: TFOrganiser
  Left = 0
  Top = 0
  Caption = 'FOrganiser'
  ClientHeight = 491
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 111
    Height = 19
    Caption = 'All participants:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 33
    Width = 753
    Height = 144
    DataSource = dmchess.Dsregest
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birthday'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wins'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'loses'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'draws'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 110
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 183
    Width = 240
    Height = 25
    DataSource = dmchess.Dsregest
    TabOrder = 1
  end
end
