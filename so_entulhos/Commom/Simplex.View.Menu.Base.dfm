object frmMenuBase: TfrmMenuBase
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMenuBase'
  ClientHeight = 727
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 727
    Align = alClient
    BevelOuter = bvNone
    Color = 2828067
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 727
      Align = alLeft
      BevelOuter = bvNone
      Color = 4866358
      ParentBackground = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 233
        Height = 145
        Align = alTop
        BevelOuter = bvNone
        Color = 1841430
        Padding.Left = 15
        Padding.Top = 10
        Padding.Right = 15
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 15
          Top = 93
          Width = 203
          Height = 12
          Align = alTop
          Alignment = taCenter
          Caption = 'Categorias dispon'#237'veis  para navega'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 155
        end
        object lblHora: TLabel
          Left = 15
          Top = 26
          Width = 203
          Height = 32
          Align = alTop
          Alignment = taCenter
          Caption = '00:00 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11908533
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 70
        end
        object lblData: TLabel
          AlignWithMargins = True
          Left = 18
          Top = 61
          Width = 197
          Height = 20
          Margins.Bottom = 12
          Align = alTop
          Alignment = taCenter
          Caption = '16/02/2019'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11908533
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 86
        end
        object lblCidade: TLabel
          AlignWithMargins = True
          Left = 28
          Top = 10
          Width = 190
          Height = 13
          Margins.Left = 13
          Margins.Top = 0
          Margins.Right = 0
          Align = alTop
          Alignment = taCenter
          Caption = 'Sta B'#225'rbara do Oeste - SP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 131
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 145
        Width = 233
        Height = 582
        Align = alClient
        BevelOuter = bvNone
        Color = 1841430
        ParentBackground = False
        TabOrder = 1
        object ScrollBox: TScrollBox
          Left = 0
          Top = 0
          Width = 233
          Height = 582
          HorzScrollBar.Smooth = True
          HorzScrollBar.Style = ssFlat
          VertScrollBar.ButtonSize = 2
          VertScrollBar.Smooth = True
          VertScrollBar.Style = ssFlat
          Align = alClient
          AutoScroll = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 1841430
          ParentColor = False
          TabOrder = 0
        end
      end
    end
    object pnlTela: TPanel
      Left = 233
      Top = 0
      Width = 1044
      Height = 727
      Align = alClient
      BevelOuter = bvNone
      Caption = '<Nenhuma tela selecionada> '
      Color = 3748910
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 496
    Top = 8
  end
end
