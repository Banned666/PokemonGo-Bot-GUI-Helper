object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PokemonGo-Bot GUI Helper [0.3]'
  ClientHeight = 250
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 11
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object lbl2: TLabel
    Left = 8
    Top = 36
    Width = 22
    Height = 13
    Caption = 'Pass'
  end
  object lbl3: TLabel
    Left = 24
    Top = 212
    Width = 635
    Height = 13
    Caption = 
      'Contributors: eggins, crack00r, ethervoid, Bashin, tstumm, TheGo' +
      'ldenXY, Reaver01, rarshonsky, earthchie, and me (Banned666) :3'
  end
  object lbl4: TLabel
    Left = 24
    Top = 231
    Width = 355
    Height = 13
    Caption = 
      'Link to Pokemon Go Bot: https://github.com/PokemonGoF/PokemonGo-' +
      'Bot'
  end
  object edt1: TEdit
    Left = 8
    Top = 185
    Width = 683
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'GENERATED CODE'
  end
  object edt2: TEdit
    Left = 39
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 39
    Top = 31
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object chk1: TCheckBox
    Left = 176
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Start Location'
    TabOrder = 3
    OnClick = chk1Click
  end
  object chk2: TCheckBox
    Left = 176
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Location cache'
    TabOrder = 4
  end
  object chk3: TCheckBox
    Left = 176
    Top = 35
    Width = 97
    Height = 17
    Caption = 'Bot Mode'
    TabOrder = 5
    OnClick = chk3Click
  end
  object chk4: TCheckBox
    Left = 448
    Top = 10
    Width = 97
    Height = 17
    Caption = 'Walk'
    TabOrder = 6
    OnClick = chk4Click
  end
  object chk5: TCheckBox
    Left = 448
    Top = 33
    Width = 97
    Height = 17
    Caption = 'CP to transfer'
    TabOrder = 7
    OnClick = chk5Click
  end
  object chk6: TCheckBox
    Left = 448
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Max steps'
    TabOrder = 8
    OnClick = chk6Click
  end
  object edt4: TEdit
    Left = 296
    Top = 8
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object cbb1: TComboBox
    Left = 296
    Top = 35
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 10
    Text = 'SELECT MODE'
    Items.Strings = (
      'All'
      'Pokestop'
      'Farm')
  end
  object cbb2: TComboBox
    Left = 570
    Top = 8
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 11
    Text = 'SELECT SPEED'
    Items.Strings = (
      '2.5'
      '2.6'
      '2.7'
      '2.8'
      '2.9'
      '3.0'
      '3.1'
      '3.2'
      '3.3'
      '3.4'
      '3.5'
      '3.6'
      '3.7'
      '3.8'
      '3.9'
      '4.0'
      '4.1'
      '4.2'
      '4.3'
      '4.5'
      '4.6')
  end
  object edt5: TEdit
    Left = 570
    Top = 35
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object edt6: TEdit
    Left = 570
    Top = 62
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 13
  end
  object chk7: TCheckBox
    Left = 296
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Initial Transfer'
    TabOrder = 14
  end
  object chk8: TCheckBox
    Left = 111
    Top = 93
    Width = 49
    Height = 17
    Caption = 'Debug'
    TabOrder = 15
  end
  object chk9: TCheckBox
    Left = 8
    Top = 93
    Width = 48
    Height = 17
    Caption = 'Test'
    TabOrder = 16
  end
  object edt7: TEdit
    Left = 296
    Top = 127
    Width = 395
    Height = 21
    TabOrder = 17
  end
  object chk10: TCheckBox
    Left = 176
    Top = 125
    Width = 97
    Height = 17
    Caption = 'Gmap key'
    TabOrder = 18
  end
  object cbb3: TComboBox
    Left = 8
    Top = 66
    Width = 152
    Height = 21
    TabOrder = 19
    Text = 'SELECT MODE'
    Items.Strings = (
      'PTC'
      'GOOGLE')
  end
  object btn1: TButton
    Left = 8
    Top = 154
    Width = 265
    Height = 25
    Caption = 'Generate code'
    TabOrder = 20
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 296
    Top = 154
    Width = 395
    Height = 25
    Caption = 'Generate bat'
    TabOrder = 21
    OnClick = btn2Click
  end
  object chk11: TCheckBox
    Left = 448
    Top = 90
    Width = 97
    Height = 17
    Caption = 'Distance Unit'
    TabOrder = 22
    OnClick = chk11Click
  end
  object cbb4: TComboBox
    Left = 568
    Top = 89
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 23
    Text = 'SELECT MODE'
    Items.Strings = (
      'Kilometers'
      'Miles'
      'Feet')
  end
  object chk12: TCheckBox
    Left = 176
    Top = 91
    Width = 114
    Height = 17
    Caption = 'Pokemon potential'
    TabOrder = 24
    OnClick = chk12Click
  end
  object edt8: TEdit
    Left = 296
    Top = 91
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 25
  end
end
