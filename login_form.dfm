object login: Tlogin
  Left = 0
  Top = 0
  Caption = 'login'
  ClientHeight = 318
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edit_username: TEdit
    Left = 168
    Top = 72
    Width = 169
    Height = 49
    TabOrder = 0
  end
  object edit_password: TEdit
    Left = 168
    Top = 136
    Width = 169
    Height = 49
    TabOrder = 1
  end
  object btnlogin: TButton
    Left = 168
    Top = 207
    Width = 169
    Height = 50
    Caption = 'Log in'
    TabOrder = 2
    OnClick = btnloginClick
  end
end
