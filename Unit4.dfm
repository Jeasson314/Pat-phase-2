object Form4: TForm4
  Left = 629
  Top = 257
  Caption = 'Form4'
  ClientHeight = 606
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 921
    Height = 609
    ActivePage = TabSheet2
    TabHeight = 40
    TabOrder = 0
    TabWidth = 450
    object TabSheet1: TTabSheet
      Caption = 'Tournament Participant'
      ExplicitWidth = 897
      ExplicitHeight = 511
    end
    object TabSheet2: TTabSheet
      Caption = 'Tournament Organisers'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 50
      object Image1: TImage
        Left = 695
        Top = 3
        Width = 206
        Height = 201
      end
      object Label2: TLabel
        Left = 3
        Top = 234
        Width = 64
        Height = 13
        Caption = 'Match results'
      end
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 81
        Height = 18
        Caption = 'Contestant list'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 27
        Width = 689
        Height = 201
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
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'first_name'
            Width = 100
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 150
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
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'loses'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'draws'
            Width = 44
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 176
        Top = 483
        Width = 240
        Height = 25
        DataSource = dmchess.Dsregest
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 253
        Width = 758
        Height = 194
        DataSource = dmchess.Dsuser
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'first_name_white'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name_white'
            Width = 110
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
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name_black'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'scores_black'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'board_number'
            Visible = True
          end>
      end
    end
  end
end
