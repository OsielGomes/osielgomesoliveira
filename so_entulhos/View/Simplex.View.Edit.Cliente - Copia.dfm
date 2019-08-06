inherited frmEditCliente: TfrmEditCliente
  Caption = 'frmEditCliente'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBorda: TPanel
    inherited pnlMain: TPanel
      inherited pnlEditMain: TPanel
        TabOrder = 1
        ExplicitWidth = 878
        ExplicitHeight = 658
        object lblNomeRazao: TLabel
          Left = 12
          Top = 45
          Width = 65
          Height = 13
          Caption = 'Nome/Raz'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          Visible = False
        end
        object lblApelidoFantasia: TLabel
          Left = 488
          Top = 45
          Width = 87
          Height = 13
          Caption = 'Apelido/Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          Visible = False
        end
        object edtNomeRazao: TEdit
          Left = 12
          Top = 61
          Width = 470
          Height = 25
          BevelEdges = [beBottom]
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          TabOrder = 0
          TextHint = 'Nome/Raz'#227'o'
          OnChange = edtNomeRazaoChange
          OnEnter = edtNomeRazaoEnter
          OnExit = edtNomeRazaoExit
        end
        object edtApelidoFantasia: TEdit
          Left = 488
          Top = 61
          Width = 380
          Height = 25
          BevelEdges = [beBottom]
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          TabOrder = 1
          TextHint = 'Apelido/Fantasia'
          OnChange = edtApelidoFantasiaChange
          OnEnter = edtApelidoFantasiaEnter
          OnExit = edtApelidoFantasiaExit
        end
        object pnlEditCard: TPanel
          Left = 0
          Top = 104
          Width = 878
          Height = 518
          BevelOuter = bvNone
          Caption = 'pnlEditCard'
          ShowCaption = False
          TabOrder = 2
          object pnlMenu: TPanel
            Left = 0
            Top = 0
            Width = 878
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            Padding.Left = 15
            Padding.Top = 5
            Padding.Right = 15
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object pnlBasico: TPanel
              Left = 15
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'B'#225'sico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsUnderline]
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 0
              OnClick = pnlBasicoClick
            end
            object pnlContatos: TPanel
              Left = 215
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Contatos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 2
              OnClick = pnlContatosClick
            end
            object pnlEnderecos: TPanel
              Left = 115
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Endere'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 1
              OnClick = pnlEnderecosClick
            end
          end
          object cardMain: TCardPanel
            Left = 0
            Top = 41
            Width = 878
            Height = 477
            Align = alClient
            ActiveCard = cardEnderecos
            BevelOuter = bvNone
            Caption = 'cardMain'
            TabOrder = 1
            OnCardChange = cardMainCardChange
            object cardBasico: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardBasico'
              CardIndex = 0
              TabOrder = 2
              object pnlEditBasico: TPanel
                Left = 0
                Top = 0
                Width = 878
                Height = 477
                Align = alClient
                BevelOuter = bvNone
                ShowCaption = False
                TabOrder = 0
                object lblCPFCNPJ: TLabel
                  Left = 12
                  Top = 105
                  Width = 47
                  Height = 13
                  Caption = 'CPF/CNPJ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblRGIE: TLabel
                  Left = 12
                  Top = 167
                  Width = 28
                  Height = 13
                  Caption = 'RG/IE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object cbbTipoPessoa: TComboBox
                  Left = 12
                  Top = 40
                  Width = 856
                  Height = 25
                  Style = csDropDownList
                  TabOrder = 0
                  TextHint = 'Pessoa f'#237'sica/Pessoa jur'#237'dica'
                  OnChange = cbbTipoPessoaChange
                  Items.Strings = (
                    'F'#237'sica'
                    'Jur'#237'dica')
                end
                object edtRgIe: TEdit
                  Left = 12
                  Top = 186
                  Width = 856
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 2
                  TextHint = 'RG/IE'
                  OnChange = edtRgIeChange
                  OnEnter = edtRgIeEnter
                  OnExit = edtRgIeExit
                end
                object edtCPFCNPJ: TMaskEdit
                  Left = 12
                  Top = 124
                  Width = 856
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  EditMask = '000.000.000-00;1;'
                  MaxLength = 14
                  TabOrder = 1
                  Text = '   .   .   -  '
                  TextHint = 'CPF/CNPJ'
                end
              end
            end
            object cardEnderecos: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardEnderecos'
              CardIndex = 1
              TabOrder = 0
              object cxGrid1: TcxGrid
                AlignWithMargins = True
                Left = 10
                Top = 248
                Width = 858
                Height = 219
                Margins.Left = 10
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alBottom
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 1
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.ScrollbarMode = sbmDefault
                object gridEnderecos: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Append.Visible = False
                  Navigator.Buttons.Delete.Visible = False
                  Navigator.Buttons.Edit.Visible = False
                  Navigator.Buttons.Post.Visible = False
                  Navigator.Buttons.Cancel.Visible = False
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.Visible = False
                  Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                  DataController.DataSource = dsEnderecos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = 'TOTAL REGISTROS 0'
                      Kind = skCount
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.InfoText = 'Clique aqui para adicionar um novo contato'
                  NewItemRow.SeparatorColor = 3288877
                  NewItemRow.SeparatorWidth = 10
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsSelection.CellSelect = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.EditAutoHeightBorderColor = 10707477
                  OptionsView.GridLineColor = 10707477
                  OptionsView.GridLines = glHorizontal
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 30
                  OptionsView.RowSeparatorColor = 10707477
                  Styles.Content = corcontent
                  Styles.ContentEven = corEven
                  Styles.ContentOdd = corOdd
                  Styles.Header = corheader
                  Styles.Inactive = corinactive
                  Styles.NewItemRowInfoText = corinactive
                  Styles.Selection = corselection
                  object col2: TcxGridDBColumn
                    DataBinding.FieldName = 'Logradouro'
                    Width = 236
                  end
                  object col3: TcxGridDBColumn
                    DataBinding.FieldName = 'N'#250'mero'
                    Width = 60
                  end
                  object colEnderecosColumn1: TcxGridDBColumn
                    Caption = 'Complemento'
                    DataBinding.FieldName = 'COMPLEMENTO'
                    Width = 120
                  end
                  object colEnderecosColumn2: TcxGridDBColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 200
                  end
                  object colEnderecosColumn3: TcxGridDBColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 200
                  end
                end
                object level1: TcxGridLevel
                  GridView = gridEnderecos
                end
              end
              object pnlEditEnderecos: TPanel
                Left = 0
                Top = 0
                Width = 878
                Height = 248
                Align = alClient
                BevelOuter = bvNone
                ShowCaption = False
                TabOrder = 0
                object lblLogradouro: TLabel
                  Left = 100
                  Top = 67
                  Width = 61
                  Height = 13
                  Caption = 'Logradouro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblNumero: TLabel
                  Left = 492
                  Top = 67
                  Width = 41
                  Height = 13
                  Caption = 'N'#250'mero'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblBairro: TLabel
                  Left = 12
                  Top = 120
                  Width = 31
                  Height = 13
                  Caption = 'Bairro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblCidade: TLabel
                  Left = 360
                  Top = 120
                  Width = 36
                  Height = 13
                  Caption = 'Cidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblUF: TLabel
                  Left = 793
                  Top = 120
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblCEP: TLabel
                  Left = 12
                  Top = 67
                  Width = 19
                  Height = 13
                  Caption = 'CEP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblComplemento: TLabel
                  Left = 559
                  Top = 67
                  Width = 72
                  Height = 13
                  Caption = 'Complemento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object lblObs: TLabel
                  Left = 12
                  Top = 171
                  Width = 65
                  Height = 13
                  Caption = 'Observa'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  Visible = False
                end
                object edtLogradouro: TEdit
                  Left = 100
                  Top = 83
                  Width = 386
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 2
                  TextHint = 'Logradouro'
                  OnChange = edtLogradouroChange
                  OnEnter = edtLogradouroEnter
                  OnExit = edtLogradouroExit
                end
                object edtNumero: TEdit
                  Left = 492
                  Top = 83
                  Width = 61
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 3
                  TextHint = 'N'#250'mero'
                  OnChange = edtNumeroChange
                  OnEnter = edtNumeroEnter
                  OnExit = edtNumeroExit
                end
                object edtBairro: TEdit
                  Left = 12
                  Top = 136
                  Width = 342
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 5
                  TextHint = 'Bairro'
                  OnChange = edtBairroChange
                  OnEnter = edtBairroEnter
                  OnExit = edtBairroExit
                end
                object edtCidade: TEdit
                  Left = 360
                  Top = 136
                  Width = 427
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 6
                  TextHint = 'Cidade'
                  OnChange = edtCidadeChange
                  OnEnter = edtCidadeEnter
                  OnExit = edtCidadeExit
                end
                object cbbUF: TComboBox
                  Left = 793
                  Top = 136
                  Width = 75
                  Height = 25
                  TabOrder = 7
                  TextHint = 'Estado'
                end
                object pnlNovoEndereco: TPanel
                  Left = 736
                  Top = 6
                  Width = 132
                  Height = 39
                  Cursor = crHandPoint
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  Caption = 'Novo endere'#231'o'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  Font.Quality = fqClearType
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                  OnClick = pnlNovoEnderecoClick
                  object imgNovoEndereco: TImage
                    Left = 0
                    Top = 0
                    Width = 34
                    Height = 39
                    Cursor = crHandPoint
                    Align = alLeft
                    Center = True
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                      000000200806000000737A7AF4000000097048597300000EC400000EC401952B
                      0E1B000001F1494441545885CD97B14A034110863F8F2B4452DC435C71A4B2B0
                      129BB3921469ACB54A6B2B585A596893274811C4CAC64611318D580949A788E0
                      03886095147A6871B338B7B9337BD1E4FC61616F67F69FD9D9DBD9597047006C
                      031DA00FEC2BD9BE8C75442728C13B1111D00546C0A76A874AE7D0928D644EF4
                      1BC335A00DBC5BE42E0E98F62E1CB5B2C623E0DE224B8073A025725FE9FB32D6
                      129DC49A7B4F8968AC00AF16C13110965840287334C7AB70FF88C832FE026C94
                      306C634338B4138591A8910DFB33E5565D8450B8F476E4FE136DB22BFF0BE3DA
                      091D89B6AD1091FDDB1B8EC475692E68903D1D99ADE82AE18923E13AE9DF9E48
                      DF0527CA4ED70C067C279904F7D0EF2AB25DC73921DF477404041ED0041645E1
                      127872249B064F6203B1D9F48058299CCED0789E8DD80396D5C0CD1C1CB855FD
                      651F3803AE64A028FCEB8C67B1B8A06F70075CE78C3F0247D21FFEE8AAA0CE78
                      6E7769090E47D473F1609658202D2696E47B0FF8C8D12BDA02734F5C003D4B5E
                      B4053E7020FD21A4958C095B9902629A3C00E9B698797D0F1828E15A09A269B1
                      AAFA038F6CE836E7E080B6D1838A53B111547A19C13FB88EA1E28204E65B922D
                      1529575A941A545A961B54FA3031F8CBA759E19EBB60A68F537F9202F0006C01
                      3BA4F5634C5A45E96262487AA70C48D3EB19F0E6C0CD1738D2FEEFB21AD08500
                      00000049454E44AE426082}
                    ExplicitHeight = 40
                  end
                end
                object edtComplemento: TEdit
                  Left = 559
                  Top = 83
                  Width = 309
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  TabOrder = 4
                  TextHint = 'Complemento'
                  OnChange = edtComplementoChange
                  OnEnter = edtComplementoEnter
                  OnExit = edtComplementoExit
                end
                object memoObs: TMemo
                  Left = 12
                  Top = 188
                  Width = 856
                  Height = 45
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 8
                end
                object edtCEP: TDBEdit
                  Left = 12
                  Top = 83
                  Width = 82
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'CEP'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 1
                  OnChange = edtCepChange
                  OnEnter = edtCepEnter
                  OnExit = edtCepExit
                end
              end
            end
            object cardContatos: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardContatos'
              CardIndex = 2
              TabOrder = 1
              DesignSize = (
                878
                477)
              object lblContato: TLabel
                Left = 12
                Top = 67
                Width = 42
                Height = 13
                Caption = 'Contato'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object lblEmail: TLabel
                Left = 399
                Top = 67
                Width = 27
                Height = 13
                Caption = 'Email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object lblFoneComercial: TLabel
                Left = 12
                Top = 123
                Width = 77
                Height = 13
                Caption = 'Fone comercial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object lblFoneResidencial: TLabel
                Left = 142
                Top = 123
                Width = 84
                Height = 13
                Caption = 'Fone residencial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object lblCelular: TLabel
                Left = 272
                Top = 123
                Width = 63
                Height = 13
                Caption = 'Fone celular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object lblContatoObservacao: TLabel
                Left = 399
                Top = 123
                Width = 60
                Height = 13
                Caption = 'Observa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                Visible = False
              end
              object edtContato: TEdit
                Left = 12
                Top = 83
                Width = 381
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 1
                TextHint = 'Nome/Raz'#227'o'
                OnChange = edtContatoChange
                OnEnter = edtContatoEnter
                OnExit = edtContatoExit
              end
              object edtEmail: TEdit
                Left = 399
                Top = 83
                Width = 469
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 2
                TextHint = 'Email'
                OnChange = edtEmailChange
                OnEnter = edtEmailEnter
                OnExit = edtEmailExit
              end
              object edtFoneComercial: TEdit
                Left = 12
                Top = 139
                Width = 124
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 3
                TextHint = 'Fone comercial'
                OnChange = edtFoneComercialChange
                OnEnter = edtFoneComercialEnter
                OnExit = edtFoneComercialExit
              end
              object edtFoneResidencial: TEdit
                Left = 142
                Top = 139
                Width = 124
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 4
                TextHint = 'Fone residencial'
                OnChange = edtFoneResidencialChange
                OnEnter = edtFoneResidencialEnter
                OnExit = edtFoneResidencialExit
              end
              object edtCelular: TEdit
                Left = 272
                Top = 139
                Width = 121
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 5
                TextHint = 'Fone celular'
                OnChange = edtCelularChange
                OnEnter = edtCelularEnter
                OnExit = edtCelularExit
              end
              object edtContatoObservacao: TEdit
                Left = 399
                Top = 139
                Width = 469
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelKind = bkFlat
                BevelOuter = bvRaised
                BorderStyle = bsNone
                TabOrder = 6
                TextHint = 'Observa'#231#227'o'
                OnChange = edtContatoObservacaoChange
                OnEnter = edtContatoObservacaoEnter
                OnExit = edtContatoObservacaoExit
              end
              object cxGridcxgrd1: TcxGrid
                AlignWithMargins = True
                Left = 12
                Top = 192
                Width = 856
                Height = 278
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 10
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 7
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.ScrollbarMode = sbmDefault
                object gridContatos: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.First.Visible = False
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.Prior.Visible = False
                  Navigator.Buttons.Next.Visible = False
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.Visible = False
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Append.ImageIndex = 0
                  Navigator.Buttons.Append.Visible = True
                  Navigator.Buttons.Delete.ImageIndex = 4
                  Navigator.Buttons.Delete.Visible = True
                  Navigator.Buttons.Edit.Visible = False
                  Navigator.Buttons.Post.ImageIndex = 1
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.Visible = False
                  Navigator.Buttons.Refresh.ImageIndex = 3
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.Visible = False
                  Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                  DataController.DataSource = dsContatos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = 'TOTAL REGISTROS 0'
                      Kind = skCount
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.InfoText = 'Clique aqui para adicionar um novo contato'
                  NewItemRow.SeparatorColor = 3288877
                  NewItemRow.SeparatorWidth = 10
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.EditAutoHeightBorderColor = 10707477
                  OptionsView.GridLineColor = 10707477
                  OptionsView.GridLines = glHorizontal
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 30
                  OptionsView.RowSeparatorColor = 10707477
                  Styles.Content = corcontent
                  Styles.ContentEven = corEven
                  Styles.ContentOdd = corOdd
                  Styles.Header = corheader
                  Styles.Inactive = corinactive
                  Styles.NewItemRowInfoText = corinactive
                  Styles.Selection = corselection
                  object colContatosColumn1: TcxGridDBColumn
                    DataBinding.FieldName = 'Contato'
                    Width = 138
                  end
                  object colContatosColumn2: TcxGridDBColumn
                    DataBinding.FieldName = 'Email'
                    Width = 153
                  end
                  object colContatosColumn3: TcxGridDBColumn
                    Caption = 'Fone comercial'
                    DataBinding.FieldName = 'FoneComercial'
                    Width = 100
                  end
                  object colContatosColumn4: TcxGridDBColumn
                    Caption = 'Fone residencial'
                    DataBinding.FieldName = 'FoneResidencial'
                    Width = 100
                  end
                  object colContatosColumn5: TcxGridDBColumn
                    Caption = 'Fone celular'
                    DataBinding.FieldName = 'FoneCelular'
                    Width = 100
                  end
                end
                object levelgridlvl1: TcxGridLevel
                  GridView = gridContatos
                end
              end
              object pnlNovoContato: TPanel
                Left = 736
                Top = 14
                Width = 132
                Height = 39
                Cursor = crHandPoint
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Novo contato'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                Font.Quality = fqClearType
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
                object imgNovoContato: TImage
                  Left = 0
                  Top = 0
                  Width = 34
                  Height = 39
                  Cursor = crHandPoint
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                    000000200806000000737A7AF4000000097048597300000EC400000EC401952B
                    0E1B000001F1494441545885CD97B14A034110863F8F2B4452DC435C71A4B2B0
                    129BB3921469ACB54A6B2B585A596893274811C4CAC64611318D580949A788E0
                    03886095147A6871B338B7B9337BD1E4FC61616F67F69FD9D9DBD9597047006C
                    031DA00FEC2BD9BE8C75442728C13B1111D00546C0A76A874AE7D0928D644EF4
                    1BC335A00DBC5BE42E0E98F62E1CB5B2C623E0DE224B8073A025725FE9FB32D6
                    129DC49A7B4F8968AC00AF16C13110965840287334C7AB70FF88C832FE026C94
                    306C634338B4138591A8910DFB33E5565D8450B8F476E4FE136DB22BFF0BE3DA
                    091D89B6AD1091FDDB1B8EC475692E68903D1D99ADE82AE18923E13AE9DF9E48
                    DF0527CA4ED70C067C279904F7D0EF2AB25DC73921DF477404041ED0041645E1
                    127872249B064F6203B1D9F48058299CCED0789E8DD80396D5C0CD1C1CB855FD
                    651F3803AE64A028FCEB8C67B1B8A06F70075CE78C3F0247D21FFEE8AAA0CE78
                    6E7769090E47D473F1609658202D2696E47B0FF8C8D12BDA02734F5C003D4B5E
                    B4053E7020FD21A4958C095B9902629A3C00E9B698797D0F1828E15A09A269B1
                    AAFA038F6CE836E7E080B6D1838A53B111547A19C13FB88EA1E28204E65B922D
                    1529575A941A545A961B54FA3031F8CBA759E19EBB60A68F537F9202F0006C01
                    3BA4F5634C5A45E96262487AA70C48D3EB19F0E6C0CD1738D2FEEFB21AD08500
                    00000049454E44AE426082}
                  ExplicitHeight = 40
                end
              end
            end
          end
        end
      end
      inherited pnlBotoes: TPanel
        Color = 10907415
        TabOrder = 2
        inherited pnlSalvar: TPanel
          Left = 656
          Width = 200
          Color = 10907415
          TabOrder = 1
          OnClick = pnlSalvarClick
          ExplicitLeft = 662
          ExplicitWidth = 200
          ExplicitHeight = 50
        end
        inherited pnlCancelar: TPanel
          Left = 456
          Width = 200
          Color = 10907415
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 453
          ExplicitWidth = 200
          ExplicitHeight = 50
        end
      end
      inherited pnlStatus: TPanel
        Color = 10907415
        TabOrder = 0
        inherited lblStatus: TLabel
          Height = 22
        end
      end
    end
  end
  object dsPessoa: TDataSource
    OnDataChange = dsPessoaDataChange
    Left = 644
    Top = 220
  end
  object CoresGridstyle: TcxStyleRepository
    Left = 627
    Top = 57
    PixelsPerInch = 96
    object corBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
    object corOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15131101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corcontent: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corselection: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 10707477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object corheader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      TextColor = clWhite
    end
    object corinactive: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object corGroupbyBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
    object corBandHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object dsContatos: TDataSource
    OnDataChange = dsContatosDataChange
    Left = 565
    Top = 118
  end
  object dsEnderecos: TDataSource
    OnStateChange = dsEnderecosStateChange
    OnDataChange = dsEnderecosDataChange
    Left = 309
    Top = 446
  end
end
