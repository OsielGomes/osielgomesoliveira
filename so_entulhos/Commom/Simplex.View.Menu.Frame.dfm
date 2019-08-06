object FrameMenu: TFrameMenu
  Left = 0
  Top = 0
  Width = 233
  Height = 93
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 93
    Align = alClient
    BevelOuter = bvNone
    Color = 1841430
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnClick = pnlMainClick
    OnMouseEnter = pnlMainMouseEnter
    OnMouseLeave = pnlMainMouseLeave
    object lblDescricao: TLabel
      Left = 61
      Top = 48
      Width = 164
      Height = 33
      AutoSize = False
      Caption = 
        'Texto informativo para verificar como fica a iuntegra'#231#227'o com o u' +
        'su'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = pnlMainClick
      OnMouseEnter = pnlMainMouseEnter
      OnMouseLeave = pnlMainMouseLeave
    end
    object lblTituloMenu: TLabel
      Left = 61
      Top = 27
      Width = 52
      Height = 20
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15132390
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = pnlMainClick
      OnMouseEnter = pnlMainMouseEnter
      OnMouseLeave = pnlMainMouseLeave
    end
    object lblCategoria: TLabel
      Left = 61
      Top = 12
      Width = 50
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = pnlMainClick
      OnMouseEnter = pnlMainMouseEnter
      OnMouseLeave = pnlMainMouseLeave
    end
    object shpSelecionado: TShape
      Left = 26
      Top = 25
      Width = 24
      Height = 24
      Brush.Color = 3288877
      Pen.Style = psClear
      OnMouseEnter = pnlMainMouseEnter
      OnMouseLeave = pnlMainMouseLeave
    end
  end
end
