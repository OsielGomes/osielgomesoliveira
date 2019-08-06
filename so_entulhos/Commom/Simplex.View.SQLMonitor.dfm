object SqlMonitorForm: TSqlMonitorForm
  Left = 0
  Top = 0
  Caption = 'SQL Monitor'
  ClientHeight = 320
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BevelBottom: TBevel
    Left = 0
    Top = 283
    Width = 592
    Height = 2
    Align = alBottom
    Shape = bsBottomLine
    ExplicitLeft = -76
    ExplicitTop = 311
    ExplicitWidth = 825
  end
  object Memo: TMemo
    Left = 0
    Top = 0
    Width = 592
    Height = 283
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 582
    ExplicitHeight = 272
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 285
    Width = 592
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      592
      35)
    object btClear: TButton
      Left = 495
      Top = 5
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'C&lear'
      TabOrder = 0
      OnClick = btClearClick
    end
    object cbEnable: TCheckBox
      Left = 8
      Top = 9
      Width = 177
      Height = 17
      Caption = 'Enable SQL Logging'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbEnableClick
    end
  end
end
