unit Simplex.View.Cadastros.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxGDIPlusClasses, JvExControls, JvButton, JvTransparentButton,
  Vcl.WinXPanels, dxSkinsForm, Simplex.Comum.Enumeration,
  {}
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client
  {};

type
  TfrmCadastroTemplate = class(TForm)
    pnlPrincipal: TPanel;
    pnlTopo: TPanel;
    lblTela: TLabel;
    pnlBotoesGrid: TPanel;
    pnlMain: TPanel;
    pnlNovo: TPanel;
    pnlEditar: TPanel;
    pnlExcluir: TPanel;
    pnlSair: TPanel;
    imgNovo: TImage;
    imgEditar: TImage;
    imgExcluir: TImage;
    pnlBorda: TPanel;
    pnlStatusPesquisando: TPanel;
    btnNovo: TJvTransparentButton;
    btnEditar: TJvTransparentButton;
    btnExcluir: TJvTransparentButton;
    btnSair: TJvTransparentButton;
    style: TcxStyleRepository;
    groupbyBox: TcxStyle;
    dsGridPrincipal: TDataSource;
    contentOdd: TcxStyle;
    content: TcxStyle;
    contentEven: TcxStyle;
    selection: TcxStyle;
    header: TcxStyle;
    inactive: TcxStyle;
    pnlTotalRegistro: TPanel;
    CardPrincipal: TCardPanel;
    CardGrid: TCard;
    CardEdit: TCard;
    pnlBotoesEdit: TPanel;
    pnlSalvar: TPanel;
    imgSalvar: TImage;
    btnSalvar: TJvTransparentButton;
    pnlCancelar: TPanel;
    btnCancelar: TJvTransparentButton;
    lblAcaoPesquisando: TLabel;
    pnlStatusEditando: TPanel;
    lblAcaoEditando: TLabel;
    pnlEdit: TPanel;
    pnlEditTopo: TPanel;
    pnlGrid: TPanel;
    cxgrd1: TcxGrid;
    gridPrincipal: TcxGridDBTableView;
    gridlvl1: TcxGridLevel;
    groupbyBoxWhite: TcxStyle;
    pnlBuscaRapida: TPanel;
    edtPesquisar: TEdit;
    imgBuscaRapida: TImage;
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnExcluirMouseEnter(Sender: TObject);
    procedure btnExcluirMouseLeave(Sender: TObject);
    procedure btnSairMouseEnter(Sender: TObject);
    procedure btnSairMouseLeave(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CardEditDblClick(Sender: TObject);
    procedure btnSalvarMouseEnter(Sender: TObject);
    procedure btnSalvarMouseLeave(Sender: TObject);
    procedure gridPrincipalDblClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure ActiveCardEdit;
    procedure LimparTela;
    procedure Novo;
    procedure Editar;
    { Private declarations }
  public
    FTipoAcao : TTypeAcao;
    function RetornarInteiroChecked(Value: TCheckBox): Integer;
    procedure BuscaRapida; virtual;
  end;

var
  frmCadastroTemplate: TfrmCadastroTemplate;

implementation

{$R *.dfm}

procedure TfrmCadastroTemplate.btnCancelarClick(Sender: TObject);
begin
  CardPrincipal.ActiveCard := CardGrid;
end;

procedure TfrmCadastroTemplate.btnCancelarMouseEnter(Sender: TObject);
begin
  btnCancelar.Font.Style    := [fsbold];
end;

procedure TfrmCadastroTemplate.btnCancelarMouseLeave(Sender: TObject);
begin
  btnCancelar.Font.Style := [];
  pnlCancelar.Color := clWhite;
end;

procedure TfrmCadastroTemplate.btnEditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TfrmCadastroTemplate.btnEditarMouseEnter(Sender: TObject);
begin
  btnEditar.Font.Style := [fsbold];
  btnEditar.Font.Size := 9;
  pnlEditar.Color := RGB(54,65,74);
end;

procedure TfrmCadastroTemplate.btnEditarMouseLeave(Sender: TObject);
begin
  btnEditar.Font.Style := [];
  btnEditar.Font.Size := 8;
  pnlEditar.Color := RGB(45,47,50);
end;

procedure TfrmCadastroTemplate.btnExcluirMouseEnter(Sender: TObject);
begin
  btnExcluir.Font.Style := [fsbold];
  btnExcluir.Font.Size := 9;
  pnlExcluir.Color := RGB(54,65,74);
end;

procedure TfrmCadastroTemplate.btnExcluirMouseLeave(Sender: TObject);
begin
  btnExcluir.Font.Style := [];
  btnExcluir.Font.Size := 8;
  pnlExcluir.Color := RGB(45,47,50);
end;

procedure TfrmCadastroTemplate.btnNovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TfrmCadastroTemplate.btnNovoMouseEnter(Sender: TObject);
begin
  btnNovo.Font.Style := [fsbold];
  btnNovo.Font.Size := 9;
  pnlNovo.Color := RGB(54,65,74);
end;

procedure TfrmCadastroTemplate.btnNovoMouseLeave(Sender: TObject);
begin
  btnNovo.Font.Style := [];
  btnNovo.Font.Size  := 8;
  pnlNovo.Color := RGB(45,47,50);
end;

procedure TfrmCadastroTemplate.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroTemplate.btnSairMouseEnter(Sender: TObject);
begin
  btnSair.Font.Style := [fsbold];
  btnSair.Font.Size := 9;
  pnlSair.Color := RGB(255,94,94);//RGB(54,65,74);//RGB(220,97,95);
end;

procedure TfrmCadastroTemplate.btnSairMouseLeave(Sender: TObject);
begin
  btnSair.Font.Style := [];
  btnSair.Font.Size := 8;
  pnlSAir.Color := clWhite
end;

procedure TfrmCadastroTemplate.btnSalvarClick(Sender: TObject);
begin
  CardPrincipal.ActiveCard := CardGrid;
end;

procedure TfrmCadastroTemplate.btnSalvarMouseEnter(Sender: TObject);
begin
  btnSalvar.Font.Style := [fsbold];
end;

procedure TfrmCadastroTemplate.btnSalvarMouseLeave(Sender: TObject);
begin
  btnSalvar.Font.Style := [];
end;

procedure TfrmCadastroTemplate.CardEditDblClick(Sender: TObject);
begin
  CardPrincipal.ActiveCard := CardEdit;
end;

procedure TfrmCadastroTemplate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE : Close;
    VK_F1     : CardPrincipal.ActiveCard := CardEdit;
    VK_F2     : ActiveCardEdit;
    VK_F3     : ShowMessage('Excluir');
  end;
end;

procedure TfrmCadastroTemplate.FormShow(Sender: TObject);
begin
  CardPrincipal.ActiveCard := CardGrid;
  if edtPesquisar.CanFocus then
    edtPesquisar.SetFocus
  else
    cxgrd1.SetFocus;

end;

procedure TfrmCadastroTemplate.gridPrincipalDblClick(Sender: TObject);
begin
  Editar;
end;

procedure TfrmCadastroTemplate.ActiveCardEdit;
begin
  CardPrincipal.ActiveCard := CardEdit;
end;

procedure TfrmCadastroTemplate.LimparTela;
begin
  for var contador : Integer := 0 to Pred(ComponentCount) do
  begin
    if (Components[contador]).ClassName = 'TLabeledEdit' then
    begin
      TLabeledEdit(Components[contador]).Clear;
    end;

    if (Components[contador]).ClassName = 'TMemo' then
    begin
      TMemo(Components[contador]).Clear;
    end;
  end;
end;

function TfrmCadastroTemplate.RetornarInteiroChecked(Value : TCheckBox): Integer;
begin
  Result := 0;
  if Value.Checked then  Result := 1;
end;

procedure TfrmCadastroTemplate.Novo;
begin
  LimparTela;
  FTipoAcao := tpInsert;
  CardPrincipal.ActiveCard := CardEdit;
end;

procedure TfrmCadastroTemplate.Editar;
begin
  if dsGridPrincipal.DataSet.RecordCount <= 0 then
    raise Exception.Create('Nenhum registro selecionado!!!');
  FTipoAcao := tpUpdate;
  ActiveCardEdit;
end;

procedure TfrmCadastroTemplate.edtPesquisarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    BuscaRapida;
end;

procedure TfrmCadastroTemplate.BuscaRapida;
begin
  pnlTotalRegistro.Caption := 'Total de '+ IntToStr(dsGridPrincipal.DataSet.RecordCount) + ' registros';
end;

end.
