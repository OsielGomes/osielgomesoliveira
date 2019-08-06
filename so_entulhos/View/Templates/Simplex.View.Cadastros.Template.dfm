object frmCadastroTemplate: TfrmCadastroTemplate
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCadastroTemplate'
  ClientHeight = 565
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 565
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlBase'
    Color = 10707477
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 959
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = 10707477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Padding.Left = 15
      Padding.Top = 3
      Padding.Right = 17
      Padding.Bottom = 3
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object lblTela: TLabel
        AlignWithMargins = True
        Left = 18
        Top = 6
        Width = 160
        Height = 21
        Align = alLeft
        Alignment = taCenter
        Caption = 'Cadastros -> Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 9
      end
    end
    object pnlBorda: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 33
      Width = 953
      Height = 532
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlBorda'
      Color = 4866358
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object CardPrincipal: TCardPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 532
        Align = alClient
        ActiveCard = CardGrid
        BevelOuter = bvNone
        TabOrder = 0
        object CardGrid: TCard
          Left = 0
          Top = 0
          Width = 953
          Height = 532
          Caption = 'CardGrid'
          CardIndex = 0
          Color = 15592423
          ParentBackground = False
          TabOrder = 1
          object pnlMain: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 943
            Height = 508
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BevelOuter = bvNone
            Color = 15592423
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 5
            Padding.Top = 10
            Padding.Right = 5
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object pnlBotoesGrid: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 10
              Width = 933
              Height = 40
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 10
              Align = alTop
              BevelOuter = bvNone
              Caption = 'pnlBotoesTelaPesquisar'
              Color = clWhite
              Padding.Top = 3
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object pnlNovo: TPanel
                AlignWithMargins = True
                Left = 532
                Top = 6
                Width = 95
                Height = 31
                Cursor = crHandPoint
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F2 | Novo '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 1
                ParentFont = False
                ShowCaption = False
                TabOrder = 1
                object imgNovo: TImage
                  Left = 1
                  Top = 1
                  Width = 20
                  Height = 29
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
                    000000340806000000C5781BEB000004B8494441546843ED9ACD711B3714C7DF
                    E3AECE512A885C41E40A225510F9A69180315581A90A2C5710B982D00348A35B
                    E80A2C5560A582C815C43993BBF0FC77B01C2C08EE279672668C0B474B0A8B1F
                    DEF70398EC984EA7FBABD5EA35114D99F9B07C1EF9F34229358F3C67653AC65F
                    676767874992FC45440763BECCCE3D2A1443325996FD4344FB3B80295F71AD94
                    BA1CE37D2C84B862E6B7EEE4C698BF99F96BA417FEB6659EB952EA22D23BD6D3
                    B09412D27155ED5229751DEB45524A533357742800555EA8942AEC2AD6680022
                    63CC224DD38BF97C1E4523760E64D5F9574FC51FD3343D8E01B573A024497ECE
                    B20CAEFBF731A0760E54AAB41062CECC887BEB618C795CAD56AFEEEEEE9EFAAA
                    FCB30161C1212822FA9A65D9F1EDEDED631FA86705B250D7CCFCC65B7C6FA89D
                    031963EEFD9DB7A9961FD87B41ED1CA8AB1A750D233F80BAEEB0947243C51AE6
                    A8A44ADF9D847A6CC0A0CC657495FB013430B77C3609D93AACC8E9F23C3F60E6
                    7D664630ADD8DC776D43524A18FC8931E6A86D999F65D9CB2E59C34E24747E7E
                    FE7A32995CF52DF191E31963AE6F6E6E3E34D9E4A840420848E2CFBE20FEE291
                    65E4797E5927B1D18084106F98B9AEF27D70D2A0D26E8E00C1CCF8DC56BAA328
                    9C69ADDF87A4350A90941252990676F80B335F2549B2682AE6ACD380BDA1E7F1
                    4B60F1C1F23D3A5008C618F31F33CFFAF6E4A49453D81033FFE4816D40450512
                    42844A818724494E9A24D264EC56620B5F158D31EFB5D6B3F2FFA3015907F0C9
                    5BD847A5D449DD62BB3669A49480F2CBF763AD75618731813EBBB105CD90344D
                    8F9A24D315C8B6ACEF99D96DB43C29A55E4403828E13111C41316033ABD5EAB0
                    4D6FA02B10E63F3D3D3DD8DBDB433FD11D458B398A848410BE74DE69AD11481B
                    471F204C1AE8F816521A0CE4EF16A493A6E94193AA95A47D81AC93F8D7DD31A4
                    498381A494F0307F38EAF6416BBD1183B689AA2F10E60B3888CB1840F02EEBA8
                    6E8C79A5B586276A350602556C97881EC6005ABB50ABEB95930D9F129983FB0C
                    9941DD4E68ADDF95DFFBA102496C0CA0DA92B9A959DF4A8CCE8FDCFA286447FF
                    6B206B47950D1D0C2484787293C7E572F9C28D3F634A28E061BF0C06B26D2AD7
                    29F836549404DB063357D22563CC71830DAD4BF440BA35DC29041AEE9D4E0007
                    7AB94AC820A28F1B12C2F94DDBA068BDD80933E304BD18F0345AEB976D8D7D08
                    909FA110D105802AD96BE1FA98D7E978CB85553A355D1A1B7D81EC5584CFEEFA
                    200C9C825776B82540EDCF505A6BAD6B6DA19CA02F9010E2932DD5CBA98A52A5
                    3820DE72F03494ADD5058B3E407EBA8585965AB13EF146F64A44B34099DB1BAC
                    8DEA75050AA99A5BB5568EF09DC644DF2B32FE86341E5AD98D5C6F5A5DD96161
                    E0E6D787637E761FF54E4268F7ACE7DBDA766A2BFE505B0C30799E1FB97DBAA8
                    403615F133E0D29DC313A2F0EB745E84E049446F3D0750CE5909E278181DA88C
                    4D4484637BBFED54C4297C97E7F9C3B60E28243D994C907D04AFBA4132E89187
                    366714204021CF4AD374E135333634CC0296D7627002517B57AFA9F9321A9013
                    6766B6FBB921ADB6F663EDB0E8BA36352B4707C262ACF744F7135E30D4D6DDCA
                    66EF06E17E5DAB9B903B0172576B537EF4AC0F9919E1C1CDD4CB7B7A50C1C572
                    B9BC6FD30A73E7FF067C0661469DC09C080000000049454E44AE426082}
                  Proportional = True
                  ExplicitLeft = 11
                  ExplicitTop = 12
                  ExplicitHeight = 20
                end
                object btnNovo: TJvTransparentButton
                  Left = 21
                  Top = 1
                  Width = 73
                  Height = 29
                  Align = alClient
                  BorderWidth = 0
                  Caption = 'F1 | Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6250335
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Segoe UI'
                  HotTrackFont.Style = []
                  FrameStyle = fsIndent
                  ParentFont = False
                  OnClick = btnNovoClick
                  OnMouseEnter = btnNovoMouseEnter
                  OnMouseLeave = btnNovoMouseLeave
                  ExplicitLeft = 32
                  ExplicitTop = 6
                  ExplicitWidth = 59
                  ExplicitHeight = 34
                end
              end
              object pnlEditar: TPanel
                AlignWithMargins = True
                Left = 633
                Top = 6
                Width = 95
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F3 | Editar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 1
                ParentFont = False
                ShowCaption = False
                TabOrder = 2
                object imgEditar: TImage
                  Left = 1
                  Top = 1
                  Width = 20
                  Height = 29
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
                    000000340806000000C5781BEB000002FF494441546843ED9A5172DA301086B5
                    B6796E6ED0E404A537202728796318694A4E90E4044D4F507282D29186E12DF4
                    040937202728B9017D76ECEDACC7668CB163098C913BF60303682DE993FE95A5
                    F502CB5C83C1E0BCD3E9DC20620F00BAD9F23A7E23E233002C7DDF7F98CD662B
                    933621311E8D466741107C638CDD9A545083ED584A79A7DB4E0444306F6F6F4F
                    A79A91B2CE22E25C2975556647E51110E7FC1100FA3A379CCA06111F9452A5EA
                    01CE39F9CAD3A93A6AD2AEEFFB17653E45401300F89A53F10211C78CB1B549A3
                    15D89E31C6EE01E0534E5D77524AEA53E10542883F8CB1F3B40522BE2AA5B6FE
                    ABA0A3DA55C43EBD02800F999B1652CA5E1910660D10F1BB52EA5EBB07473014
                    42CC19635F3203BD544A7D6E2410E79C64478F91AD4B4AB979D4E48191E4AC9C
                    A116289EAE76868EE0FFB955B6926B255797D6E2765AC9B5926B2577D808B43E
                    D4FAD0610A32BE3B4F7288F84B2935FA2F8E0F3A3004DA88CDA92E4C23804C60
                    9A00B4CE0B8AC431070ABD758320B89C4EA7CBC4AFAC951C757A3299EC449C72
                    82A2EB3494B540452B19E79CA2411F33E51BA8C6010D87C3AEE33814CCCF86B8
                    22A846001184EBBA8F41105C91BFBC07653D500C43A16A8AA86EA45500B5B01A
                    8873DE07809F314CE2366B44BC564ACD63A839F954B2BC5B0B2484A02D0EC114
                    5DD752CA49BCEADD26915E2B81346012C8082A4D6C1D90010CCBDB4558056408
                    93FB02CC1A2021C40F83F7BB3B52B36AEB238420E77FF79C93F29342182B36A7
                    55C29C1CA86A989301C53911E433A53243C4BF8CB1BE52EA59E71C5FFBA26092
                    1341306118F6D2E79D32A85A818E0D53ABE4EA8089800A0E4C2B29E545D9F4EA
                    961BC2BC8661D83791D9D6D6A728F18232A21CC71923A276E285EBBA2FD96373
                    9CDD45DBFFD2BC07447CF13CAF9777F4D61DBC4A536310F132BB1AE9A6DE5401
                    13498E3EF2921C7447246DB72F5055301BA058E3744ECFCBAFD166DB07A84A98
                    0D107D89A1287BE3469B2063B807D06FD7754787F84CB6AF3B6926E4C49EE751
                    5E1AA59D19CD9809906944547790FF016499257D6D9DABCC0000000049454E44
                    AE426082}
                  Proportional = True
                  ExplicitLeft = 10
                  ExplicitTop = 12
                  ExplicitHeight = 20
                end
                object btnEditar: TJvTransparentButton
                  AlignWithMargins = True
                  Left = 24
                  Top = 4
                  Width = 67
                  Height = 23
                  Cursor = crHandPoint
                  Align = alClient
                  BorderWidth = 0
                  Caption = 'F2 | Editar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6250335
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Segoe UI'
                  HotTrackFont.Style = []
                  FrameStyle = fsIndent
                  ParentFont = False
                  OnClick = btnEditarClick
                  OnMouseEnter = btnEditarMouseEnter
                  OnMouseLeave = btnEditarMouseLeave
                  ExplicitLeft = 27
                end
              end
              object pnlExcluir: TPanel
                AlignWithMargins = True
                Left = 734
                Top = 6
                Width = 95
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F4 | Excluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 1
                ParentFont = False
                ShowCaption = False
                TabOrder = 3
                object imgExcluir: TImage
                  Left = 1
                  Top = 1
                  Width = 20
                  Height = 29
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
                    000000340806000000C5781BEB00000334494441546843ED5A5152DB3010DD8D
                    CD77E9090A27686ED07003F863401ACC091A4ED0F404A527C08C04C35FC3094A
                    4E00BD417A82D2EFC45E663372C7181BDB6349A699F82733D17AA5A75DADDEEE
                    1AC13C8787873B5B5B5B9F01601F0076B2FF5DFD12D11D11C55757579736E740
                    562684D847C40B00D8B6A9BC892E227A08C3702F8EE3C726F27532682C73DF07
                    986C716C2DADF55EDD629B8CA3102246C49326C22E6588E8406B3DED3A074A29
                    A9AB121BEF13D157ADF5A4ABAE524044F40B00C65D9557BD8F883F4BC6664AA9
                    51D739AB2C644579D5E22ABCC2CA9C1B405D5D82DFDF58A8C52EBE0997334188
                    EFA2CE81A84F40B700300D82606A8B25B0217B0124841869ADEF5A785263D15E
                    00E557777474341C0C069F0080EFA06D441C66348C2991919DA6693ABBBEBE7E
                    A843D61BA0E3E3E313441C1B0075EBCCC6E7699A4E5E63E8DE01198B5CB40452
                    043C4F92E4A0CC625E0149292300F8668BD913D1586BFD3D8FD61B200386732E
                    DBCF9952EA3C53EA059049207FD84692D377AA948ABD84ED288AB69324E104D2
                    655AFF1804C12EDF67CE2D24849820E21787D659A926A24BAD75E41C9094F28F
                    AD2050B7298BC562D729200F67A788F1CC35A0D27A05A7DB75BBDD603C42C40F
                    05B9995340524AA62E4C6B9E3D4AA955F9ACCB53A1DB2D2021C47D19237008C8
                    2DDB16423C20E2478F16720BC8B7CB71A2E8F40C55153189A87BFD0D917961F1
                    B2767E86B866EE92F214BDF9D4A985783621C42322BEEB12D19ABE1B04C17B1F
                    80D68BFA30395D2E971CED8A9760D38DAF9523A2BF6118EE7821A7C6ED5C9F25
                    7FE943B6BD6B95E0E54111D1B9C520F12C5BF592E0150F80299230697DC1206A
                    0F8B1120A2DF699AEEF75E24C92FD8B8205F8E2FC86B1530068288932CDD2E93
                    731EB6EB76DDF478B9F3BE2A3412D130E79233F3FE344992BB375B685CBB52B0
                    E90FCD39402C97CBDB9B9B9B799D259B8EF7E272250D2F0677FBBFB7538A9BBE
                    E9B1BE9928B7E9B1368D08551D3CFEA0887B372DF4B4152DEBDED939433E13B0
                    D7505BFB3466ED3E5E62EA118621BB989734B9C24A56DC6DC5B6B3040C009801
                    7B07C5A5A7300C47B65AFBFF4AB2C6521C0838BB74962EE72CC4C4337E8D39B7
                    8D342CFF04973D443EFDF8C1390000000049454E44AE426082}
                  Proportional = True
                  ExplicitLeft = 9
                  ExplicitTop = 12
                  ExplicitHeight = 20
                end
                object btnExcluir: TJvTransparentButton
                  AlignWithMargins = True
                  Left = 24
                  Top = 4
                  Width = 67
                  Height = 23
                  Cursor = crHandPoint
                  Align = alClient
                  BorderWidth = 0
                  Caption = 'F3 | Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6250335
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Segoe UI'
                  HotTrackFont.Style = []
                  FrameStyle = fsIndent
                  ParentFont = False
                  OnMouseEnter = btnExcluirMouseEnter
                  OnMouseLeave = btnExcluirMouseLeave
                  ExplicitLeft = 26
                  ExplicitTop = 1
                  ExplicitWidth = 63
                  ExplicitHeight = 42
                end
              end
              object pnlSair: TPanel
                AlignWithMargins = True
                Left = 835
                Top = 6
                Width = 95
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                Caption = 'ESC | Sair'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 1
                ParentBackground = False
                ParentFont = False
                ShowCaption = False
                TabOrder = 4
                object btnSair: TJvTransparentButton
                  Left = 1
                  Top = 1
                  Width = 93
                  Height = 29
                  Cursor = crHandPoint
                  Align = alClient
                  BorderWidth = 0
                  Caption = 'ESC | Sair'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6250335
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Segoe UI'
                  HotTrackFont.Style = []
                  FrameStyle = fsIndent
                  ParentFont = False
                  OnClick = btnSairClick
                  OnMouseEnter = btnSairMouseEnter
                  OnMouseLeave = btnSairMouseLeave
                  ExplicitLeft = -28
                  ExplicitHeight = 42
                end
              end
              object pnlStatusPesquisando: TPanel
                Left = 0
                Top = 3
                Width = 78
                Height = 37
                Align = alLeft
                BevelOuter = bvNone
                Caption = 'A'#231#227'o Pesquisando'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                ParentFont = False
                ShowCaption = False
                TabOrder = 0
                object lblAcaoPesquisando: TLabel
                  Left = 5
                  Top = 5
                  Width = 68
                  Height = 27
                  Align = alClient
                  Alignment = taCenter
                  Caption = 'A'#231#227'o Pesquisando'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6974058
                  Font.Height = -9
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  WordWrap = True
                  ExplicitWidth = 55
                  ExplicitHeight = 24
                end
              end
            end
            object pnlGrid: TPanel
              Left = 5
              Top = 60
              Width = 933
              Height = 448
              Align = alClient
              BevelOuter = bvNone
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Padding.Bottom = 5
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object cxgrd1: TcxGrid
                AlignWithMargins = True
                Left = 10
                Top = 32
                Width = 913
                Height = 401
                Margins.Left = 10
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alClient
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.ScrollbarMode = sbmDefault
                object gridPrincipal: TcxGridDBTableView
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
                  Navigator.InfoPanel.Visible = True
                  DataController.DataSource = dsGridPrincipal
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = 'TOTAL REGISTROS 0'
                      Kind = skCount
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsSelection.CellSelect = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.EditAutoHeightBorderColor = 10707477
                  OptionsView.GridLineColor = 10707477
                  OptionsView.GridLines = glNone
                  OptionsView.HeaderAutoHeight = True
                  OptionsView.RowSeparatorColor = 10707477
                  Styles.Content = content
                  Styles.ContentEven = contentEven
                  Styles.ContentOdd = contentOdd
                  Styles.FindPanel = selection
                  Styles.Group = content
                  Styles.GroupByBox = groupbyBoxWhite
                  Styles.Header = selection
                  Styles.Inactive = inactive
                  Styles.Selection = selection
                end
                object gridlvl1: TcxGridLevel
                  GridView = gridPrincipal
                end
              end
              object pnlBuscaRapida: TPanel
                Left = 0
                Top = 0
                Width = 933
                Height = 32
                Align = alTop
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
                object imgBuscaRapida: TImage
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 33
                  Height = 26
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
                    000000340806000000C5781BEB00000006624B474400FF00FF00FFA0BDA79300
                    000730494441545809D598796C147514C767B6EDD2635BE458031E8836129126
                    5643024A0CA07820D8A2604C830D1A6390C45B13A3FCA3890ADE221223411343
                    380C474D5A228831801C2121F140D480D6224125401BBADD76DBB21D3F6FB2B3
                    BCDD6EB7B3DB59B34CDE777EEFFD7EEFF78EDF35876918D95FA1506862414141
                    555F5F5F255682A66906287B412B68F1F97C478B8B8B0F511F41FE5FC8CCD44B
                    6767E7CD96653D6C18460D180306A3080A7BE9B3B6ACAC6C33C97522E78C5C27
                    140E87EF258AA5600AC896CED0712583F27E30180CC17B4E83261489442AA3D1
                    E8C778BE037845FF3053CF9596966EF4CAA063276D42CC4A2D8A9F83E120997E
                    A2A281FDB38B7D74ACA4A4E46F82B4A8335A5B5B87FBFDFEF1C8539067837B80
                    1F24D36A927A0ABDEEE406CF6592791C4481A5C172F91648A0AE7DB6B7B78FA2
                    CF9BD8E90209F69077B2BF02AE8D65A388932520D971337573B2B1E7F4E9EAEA
                    1A878D4D20C1764747C71E922A71F43C2D71360F24CC0C0E7733CAA3BD7284BD
                    17937D20379094E9950FDB0ECBE24A0CB782F80852B70E47A9D6BFDD27DB1B3E
                    6A400FD0BE9ECCD65ECA7E18FF1A6807DF904C614A650F2A99A97AED0FBE9353
                    F59AA198F6399D312627913E9A5B38AEEB3881CE3B3A5E978140602D36570187
                    4AF0B9DC11B22E99059384BE07F1D961F4EECEDA60061DF1EDC7EFEF20EE1B7E
                    7206261254ED19629AA7515B0D6CC2C91E466FBB2DE4F8C60AE8C1DF6B496E96
                    24C9AE453B211E8EF5BA072F952F6B39D73CEF78B2F47E557EE69364B1925DB3
                    3E3ACA51394FF538CCD37B9F920D743C3FE5B47D66290AD6A8BAE19CAEB72BD9
                    35EB63AF5C8FF6A5C0A12687714A1E888B1D3E5725ABA251DB26C1995A76CBFB
                    E878835666367619EAE29BA78ABA4755554E58BE9B8E61F824B0099F0971D995
                    2E6E92D0B55A8F91FA254996E53856D7E590D7FB6842367EE45018A53A5AF2D6
                    AC64616FE116644D5F4E996B3AA11CE8B854757A56122A532A9D2CC13E250B7B
                    153713DC07724D1DCA4129CB4EE2535583B3D2A15BA90D53BCC3DAC727C66B9D
                    8A1C96DA7F6F8AC11DD4B5ECA176A55578F6ECD90A250B7B4A6E601607C40C23
                    B7D76865FE9CE25DB3F21C6AD6DA9C3609870433D362C42E46EC1523B797F69D
                    10975BB71C6A3E7DB248BFA97253D8E1F024349DF7ACC58EEC65195B191395CD
                    E4B854D3C0AC8F19394473043874B7C348C96BD1364ADDBE32140ACD303CBE38
                    5D6761B21038F49DC36452CA1EEAA2C35EE0D05D041C74848A8A8A33CCCC0A47
                    A62C625AB7A233C3F0F062692F54E62C7CEE54B26B564E3979575BAB7A1461EC
                    25251BBC8D2F43D66B7A0449C9C7E063D40F9958C63761441EE0148681FFDDBC
                    4F9EB0850C6F7642BCAB35D0AF0DD884C125D48DB3056E23478E3CC7D2ABA53E
                    84E85011CC6ADE0577F1D09D0A3F147A95CE762C9406BE3E93321BD846627F31
                    3F54068AF9727C5BC9467979F9CF2C8B99D49D047122C9E996651D8825F62CB3
                    59196F74C1D04FF6EC5CA5FA079F131B949C116B3ADA0455CA481F411E6F5CB8
                    9662FC8D0BA261B03CC692C43BE8D7511FEF0FAF2982700AC81FD2F7583E9BE0
                    FB11FB70123F290F60AB5C35D6E0B351C919B1090191D0FD18DFA22C44E16B71
                    B08D328118D96AF6511DFA736898008A80501FB71F4113ED9F727A1D87EF476D
                    6D6D97F077753F0D1381438DF8AA71044F4A666025B014BA09FE9174C649AA80
                    C1B842F61D7C693A5D69936589FD23E17058FB09E3678CB47B0A022AC2D10EA0
                    9D59387B9736FF509D61E74E6C9F0109F66372133E860DC58799AAF3E9D3A7CB
                    59F75FD1360D686A66FF2C65197D4169E986C178FEBC5EC77E59865EFC7886EF
                    47D8FD8DA4CA6808521EA47C861F363F50BAA29409494F8CC921B11EBE162493
                    3858C31E6922B9E3C98D8E1C1B985BB1F510813E407D21D0D4855002D251378D
                    F3D95BDB280725339D068198EC8B272897A337D0DE3845DB61F027B080D0086E
                    5560022800A9E84B9E378B1994B7685C04D291EBA4D226E47820A9AB71BE0279
                    2E70D507BD81A885D97A81256D9FA60C5621078ACCF8A4813AC4EA25A905CC54
                    534C4E5964141C1BBA9A609EC6D20210006EC942713FC17F42401BB1D18B1C27
                    0E8493089781C1487E77D533181B0652CC2821C708810518D5DB28679AA65945
                    7D2508820090605B2965268EA2B38FC360276FF5CDD4F523DA7DD80AD3500CDC
                    500F4A32538D94FD28AB84FA5919620533B41713D3805B1A3029FB5DCEAD955C
                    E931CBCF63FB3C704B7E14373310359409941709B1270E129504271B1FD61549
                    525BD9D70BB5765E2C392720467C367C031806DC52947DB88887EF3AE9905709
                    49401C100B08703D7C11704B3DF4994C5287F362C9E9A8597E9BD95375D4F502
                    B7E4A7CFEBA29C7709495024B58500334DEA46E99B970949609214CB480E8A88
                    C82EF097E8F8E496AF604F6C67A616125F2F484B24BF4A14F23A21099099DA4A
                    520FC20F9814C97C40F27290A076911047FA3CD00D923F0C3F22A1BC3BAD5D0D
                    2B0FD16A12DA0EFE058790EB5D75BC9895FE03AA55DB5672E9C6490000000049
                    454E44AE426082}
                  Proportional = True
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitHeight = 32
                end
                object edtPesquisar: TEdit
                  AlignWithMargins = True
                  Left = 49
                  Top = 3
                  Width = 881
                  Height = 26
                  Margins.Left = 10
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Color = 1841430
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHighlightText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  TextHint = 'Busca r'#225'pida'
                  OnKeyDown = edtPesquisarKeyDown
                end
              end
            end
          end
          object pnlTotalRegistro: TPanel
            Left = 0
            Top = 513
            Width = 953
            Height = 19
            Align = alBottom
            BevelOuter = bvNone
            Caption = '0 Resultados'
            Color = 15592423
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6250335
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object CardEdit: TCard
          Left = 0
          Top = 0
          Width = 953
          Height = 532
          Caption = 'CardEdit'
          CardIndex = 1
          Color = 15592423
          Padding.Left = 5
          ParentBackground = False
          TabOrder = 0
          OnDblClick = CardEditDblClick
          object pnlBotoesEdit: TPanel
            AlignWithMargins = True
            Left = 8
            Top = 10
            Width = 935
            Height = 40
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlBotoesTelaPesquisar'
            Color = clWhite
            Padding.Left = 3
            Padding.Right = 10
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object pnlSalvar: TPanel
              AlignWithMargins = True
              Left = 726
              Top = 3
              Width = 95
              Height = 34
              Align = alRight
              BevelOuter = bvNone
              Caption = 'F4 | Excluir'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Padding.Left = 1
              Padding.Top = 1
              Padding.Right = 1
              Padding.Bottom = 1
              ParentBackground = False
              ParentFont = False
              ShowCaption = False
              TabOrder = 1
              object imgSalvar: TImage
                Left = 1
                Top = 1
                Width = 20
                Height = 32
                Align = alLeft
                Center = True
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
                  000000340806000000C5781BEB00000221494441546843ED9ADD51834010C76F
                  E1DEB5036305A603B5039F33B9193A502B3056A025304326AF5A825660AC40EC
                  C0BC03EB2C031906031C770C1F71EF2519B83BF6B7FFE5BE581059F13CEF348A
                  A25B00F08410B3FCFA987E11712BA5BCF67DFFA7CA2EA01B8BC562EEBAEECB58
                  418AC63741012913C7F1C7146072B03A28582E972B0078681B5A88F8B85EAF57
                  6DDBE9D4D7B1A90A0A94525F26EA0C0D448E39044540A8E3B5721D1B20A5D465
                  B9BF388E779BCD664BD77514AA0ABFA1800E39F13D0882ABB64065A58E02A808
                  75344039D45101111403154617E379A86264351E148A23262BC40A1D98B569E2
                  2C5F0680300802DF641E1A3CE49A56266D560A7F1C33C4D267944042881011C3
                  26E34CEE03006D308D3699C6A39C89A17DB461A03EBC6CF30C56C8C67B7DB465
                  85FAF0B2CD33FEA74288F8992489971F62D878D0A42D1D843A8EE303C04553FB
                  4685107127A59CD51DBF363DA48BFBD9517508002775FD35020921F61BAF2E0C
                  B3E94329F52684F87304D676B5CD40362AD4B565852ABCC321C721A7E9017E87
                  F81DD20C95AEAA71C871C875154B9AFD70C871C869864A57D5BA0A39FA2A70DE
                  955136FDE8E454E86CF0C806DF75DDFBA176AD59FACE93108212AB6A8B2E50DA
                  0922D28EB1F7020069FE824EA15C1FDAA79FE9541E7B1D44FC364E5E1A231CA5
                  EBA4E96551146DA7AE12A923A59CEF13001DC7799D2A14C124497243E7862910
                  954CA93BFA3B153002A111584AF99C8FC0BFEFBDF2538471056C000000004945
                  4E44AE426082}
                Proportional = True
                ExplicitLeft = 9
                ExplicitTop = 12
                ExplicitHeight = 20
              end
              object btnSalvar: TJvTransparentButton
                Left = 21
                Top = 1
                Width = 73
                Height = 32
                Cursor = crHandPoint
                Align = alClient
                BorderWidth = 0
                Caption = 'F5 | Salvar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6250335
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Segoe UI'
                HotTrackFont.Style = []
                FrameStyle = fsIndent
                ParentFont = False
                OnClick = btnSalvarClick
                OnMouseEnter = btnSalvarMouseEnter
                OnMouseLeave = btnSalvarMouseLeave
                ExplicitLeft = 48
                ExplicitTop = 6
                ExplicitWidth = 81
                ExplicitHeight = 34
              end
            end
            object pnlCancelar: TPanel
              AlignWithMargins = True
              Left = 827
              Top = 3
              Width = 95
              Height = 34
              Align = alRight
              BevelOuter = bvNone
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Padding.Left = 1
              Padding.Top = 1
              Padding.Right = 1
              Padding.Bottom = 1
              ParentBackground = False
              ParentFont = False
              ShowCaption = False
              TabOrder = 2
              object btnCancelar: TJvTransparentButton
                Left = 1
                Top = 1
                Width = 93
                Height = 32
                Cursor = crHandPoint
                Align = alClient
                BorderWidth = 0
                Caption = 'Cancelar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6250335
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -13
                HotTrackFont.Name = 'Segoe UI'
                HotTrackFont.Style = []
                FrameStyle = fsIndent
                ParentFont = False
                OnClick = btnCancelarClick
                OnMouseEnter = btnCancelarMouseEnter
                OnMouseLeave = btnCancelarMouseLeave
                ExplicitLeft = 7
                ExplicitTop = 6
                ExplicitWidth = 123
                ExplicitHeight = 34
              end
            end
            object pnlStatusEditando: TPanel
              Left = 3
              Top = 0
              Width = 70
              Height = 40
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'A'#231#227'o Editando'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              ParentFont = False
              ShowCaption = False
              TabOrder = 0
              object lblAcaoEditando: TLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Width = 54
                Height = 24
                Align = alClient
                Alignment = taCenter
                Caption = 'A'#231#227'o Editando'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -9
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 40
              end
            end
          end
          object pnlEdit: TPanel
            Left = 5
            Top = 60
            Width = 948
            Height = 472
            Align = alClient
            BevelOuter = bvNone
            Color = 15592423
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15395562
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object pnlEditTopo: TPanel
              Left = 0
              Top = 0
              Width = 948
              Height = 257
              Align = alTop
              BevelOuter = bvNone
              Caption = 'pnlEditTopo'
              Padding.Bottom = 10
              ShowCaption = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object style: TcxStyleRepository
    Left = 880
    Top = 105
    PixelsPerInch = 96
    object groupbyBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
    object contentOdd: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15131101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 6250335
    end
    object content: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 6250335
    end
    object contentEven: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 6250335
    end
    object selection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10707477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object header: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object inactive: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object groupbyBoxWhite: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
  end
  object dsGridPrincipal: TDataSource
    Left = 880
    Top = 177
  end
end
