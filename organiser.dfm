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
  OnCreate = FormCreate
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
  object Label2: TLabel
    Left = 8
    Top = 167
    Width = 55
    Height = 13
    Caption = 'Sort list by:'
  end
  object Report: TLabel
    Left = 767
    Top = 14
    Width = 93
    Height = 13
    Caption = 'Report Generation:'
  end
  object Label3: TLabel
    Left = 8
    Top = 212
    Width = 88
    Height = 19
    Caption = 'All matches:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 395
    Width = 66
    Height = 13
    Caption = 'Name search:'
  end
  object DBregestration: TDBGrid
    Left = 8
    Top = 33
    Width = 753
    Height = 128
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
    Left = 256
    Top = 183
    Width = 240
    Height = 25
    DataSource = dmchess.Dsregest
    TabOrder = 1
  end
  object btnSort: TButton
    Left = 159
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 2
    OnClick = btnSortClick
  end
  object CBsort: TComboBox
    Left = 8
    Top = 185
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'CBsort'
    Items.Strings = (
      'first_name'
      'last_name'
      'birthday'
      'member'
      'wins'
      'loses'
      'draws')
  end
  object firstnamecheck: TCheckBox
    Left = 769
    Top = 33
    Width = 97
    Height = 19
    Caption = 'First name'
    TabOrder = 4
  end
  object Lastnamecheck: TCheckBox
    Left = 769
    Top = 50
    Width = 97
    Height = 17
    Caption = 'Lastnamecheck'
    TabOrder = 5
  end
  object Birthday: TCheckBox
    Left = 769
    Top = 67
    Width = 97
    Height = 17
    Caption = 'Birthday'
    TabOrder = 6
  end
  object Members: TCheckBox
    Left = 769
    Top = 86
    Width = 97
    Height = 17
    Caption = 'Members only'
    TabOrder = 7
  end
  object Wins: TCheckBox
    Left = 769
    Top = 103
    Width = 97
    Height = 17
    Caption = 'Wins'
    TabOrder = 8
  end
  object Loses: TCheckBox
    Left = 769
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Loses'
    TabOrder = 9
  end
  object Draw: TCheckBox
    Left = 769
    Top = 137
    Width = 97
    Height = 17
    Caption = 'Draw'
    TabOrder = 10
  end
  object btnReport: TButton
    Left = 775
    Top = 194
    Width = 91
    Height = 25
    Caption = 'Generate Report'
    TabOrder = 11
    OnClick = btnReportClick
  end
  object CBreport: TComboBox
    Left = 767
    Top = 167
    Width = 99
    Height = 21
    TabOrder = 12
    Text = 'CBreport'
    Items.Strings = (
      'Text files'
      'HTML file')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 239
    Width = 695
    Height = 153
    DataSource = dmchess.Dsuser
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name_white'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name_white'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scores_white'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name_black'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name_black'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scores_black'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'board_number'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'round_number'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 216
    Top = 411
    Width = 240
    Height = 25
    DataSource = dmchess.Dsuser
    TabOrder = 14
  end
  object Edtsearch: TEdit
    Left = 8
    Top = 414
    Width = 121
    Height = 21
    TabOrder = 15
    Text = 'edtfilter'
  end
  object btnFilter: TBitBtn
    Left = 135
    Top = 412
    Width = 75
    Height = 25
    Caption = 'Search'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 16
    OnClick = btnFilterClick
  end
end
