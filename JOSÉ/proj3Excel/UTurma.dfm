object frmTurma: TfrmTurma
  Left = 0
  Top = 0
  Caption = 'Turmas'
  ClientHeight = 712
  ClientWidth = 574
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
    Left = 46
    Top = 18
    Width = 73
    Height = 31
    Caption = 'C'#243'digo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Shonar Bangla'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 55
    Top = 167
    Width = 64
    Height = 31
    Caption = 'Curso :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Shonar Bangla'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 215
    Width = 99
    Height = 31
    Caption = 'Disciplina :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Shonar Bangla'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 114
    Width = 94
    Height = 31
    Caption = 'Professor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Shonar Bangla'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 66
    Width = 79
    Height = 31
    Caption = 'Per'#237'odo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Shonar Bangla'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edCodigo: TEdit
    Left = 125
    Top = 19
    Width = 97
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Shonar Bangla'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 264
    Width = 121
    Height = 30
    Caption = 'Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Shonar Bangla'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object lbTurmas: TListBox
    Left = 24
    Top = 308
    Width = 528
    Height = 394
    ItemHeight = 13
    TabOrder = 2
  end
  object cbProfessor: TComboBox
    Left = 125
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object cbCurso: TComboBox
    Left = 125
    Top = 173
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object cbDisciplina: TComboBox
    Left = 125
    Top = 221
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object cbPeriodo: TComboBox
    Left = 125
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 6
    Items.Strings = (
      'Matutino'
      'Diurno'
      'Noturno')
  end
end
