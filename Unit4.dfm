object Form4: TForm4
  Left = 629
  Top = 257
  Caption = 'Form4'
  ClientHeight = 606
  ClientWidth = 913
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
  object Label3: TLabel
    Left = 32
    Top = 496
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1050
    Height = 609
    ActivePage = TabSheet2
    TabHeight = 40
    TabOrder = 0
    TabWidth = 480
    object TabSheet1: TTabSheet
      Caption = 'Tournament Participant'
    end
    object TabSheet2: TTabSheet
      Caption = 'Tournament Organisers'
      ImageIndex = 1
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
        Width = 70
        Height = 13
        Caption = 'Contestant list'
      end
      object Label4: TLabel
        Left = 16
        Top = 450
        Width = 79
        Height = 13
        Caption = 'Organizer Login:'
      end
      object DBContestants: TDBGrid
        Left = 0
        Top = 15
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
        Left = 200
        Top = 222
        Width = 240
        Height = 25
        DataSource = dmchess.Dsregest
        TabOrder = 1
      end
      object DBMatch: TDBGrid
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
      object Firstname_login: TEdit
        Left = 3
        Top = 464
        Width = 134
        Height = 27
        TabOrder = 3
      end
      object password_login: TEdit
        Left = 3
        Top = 497
        Width = 134
        Height = 28
        TabOrder = 4
      end
      object Button1: TButton
        Left = 3
        Top = 531
        Width = 64
        Height = 25
        Caption = 'Log in'
        TabOrder = 5
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 73
        Top = 531
        Width = 64
        Height = 25
        Caption = 'Create new'
        TabOrder = 6
        OnClick = Button2Click
      end
    end
  end
end
