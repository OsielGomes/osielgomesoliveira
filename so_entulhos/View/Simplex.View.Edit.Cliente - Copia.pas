unit Simplex.View.Edit.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Simplex.View.CrudEdit.Template, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls,
  Data.DB, Vcl.WinXCtrls, Vcl.WinXPanels, cxStyles, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Simplex.Interfaces.Crud, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, cxImageList, Vcl.Mask, Vcl.DBCtrls;

  //Deletar
//  Aurelius.Bind.Dataset;

type
  TfrmEditCliente = class(TfrmCrudEdit)
    dsPessoa: TDataSource;
    edtNomeRazao: TEdit;
    lblNomeRazao: TLabel;
    edtApelidoFantasia: TEdit;
    lblApelidoFantasia: TLabel;
    pnlEditCard: TPanel;
    pnlMenu: TPanel;
    pnlBasico: TPanel;
    pnlContatos: TPanel;
    pnlEnderecos: TPanel;
    cardMain: TCardPanel;
    cardBasico: TCard;
    cardEnderecos: TCard;
    cardContatos: TCard;
    edtContato: TEdit;
    lblContato: TLabel;
    edtEmail: TEdit;
    lblEmail: TLabel;
    edtFoneComercial: TEdit;
    lblFoneComercial: TLabel;
    edtFoneResidencial: TEdit;
    lblFoneResidencial: TLabel;
    edtCelular: TEdit;
    lblCelular: TLabel;
    edtContatoObservacao: TEdit;
    lblContatoObservacao: TLabel;
    cxGridcxgrd1: TcxGrid;
    gridContatos: TcxGridDBTableView;
    levelgridlvl1: TcxGridLevel;
    colContatosColumn1: TcxGridDBColumn;
    colContatosColumn2: TcxGridDBColumn;
    colContatosColumn3: TcxGridDBColumn;
    colContatosColumn4: TcxGridDBColumn;
    colContatosColumn5: TcxGridDBColumn;
    CoresGridstyle: TcxStyleRepository;
    corBox: TcxStyle;
    corOdd: TcxStyle;
    corcontent: TcxStyle;
    corEven: TcxStyle;
    corselection: TcxStyle;
    corheader: TcxStyle;
    corinactive: TcxStyle;
    corGroupbyBox: TcxStyle;
    corBandHeader: TcxStyle;
    dsContatos: TDataSource;
    cxGrid1: TcxGrid;
    gridEnderecos: TcxGridDBTableView;
    col2: TcxGridDBColumn;
    col3: TcxGridDBColumn;
    level1: TcxGridLevel;
    dsEnderecos: TDataSource;
    pnlEditBasico: TPanel;
    lblCPFCNPJ: TLabel;
    cbbTipoPessoa: TComboBox;
    edtRgIe: TEdit;
    lblRGIE: TLabel;
    pnlEditEnderecos: TPanel;
    lblLogradouro: TLabel;
    lblNumero: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    edtLogradouro: TEdit;
    edtNumero: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    cbbUF: TComboBox;
    pnlNovoEndereco: TPanel;
    imgNovoEndereco: TImage;
    colEnderecosColumn1: TcxGridDBColumn;
    colEnderecosColumn2: TcxGridDBColumn;
    colEnderecosColumn3: TcxGridDBColumn;
    edtComplemento: TEdit;
    lblComplemento: TLabel;
    memoObs: TMemo;
    lblObs: TLabel;
    pnlNovoContato: TPanel;
    imgNovoContato: TImage;
    edtCPFCNPJ: TMaskEdit;
    edtCEP: TDBEdit;
    procedure pnlCancelarClick(Sender: TObject);
    procedure edtNomeRazaoEnter(Sender: TObject);
    procedure edtNomeRazaoExit(Sender: TObject);
    procedure edtNomeRazaoChange(Sender: TObject);
    procedure pnlContatosClick(Sender: TObject);
    procedure pnlEnderecosClick(Sender: TObject);
    procedure pnlBasicoClick(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
    procedure dsContatosDataChange(Sender: TObject; Field: TField);
    procedure dsPessoaDataChange(Sender: TObject; Field: TField);
    procedure dsEnderecosDataChange(Sender: TObject; Field: TField);
    procedure cardMainCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure FormShow(Sender: TObject);
    procedure edtCpfCnpjEnter(Sender: TObject);
    procedure edtCpfCnpjExit(Sender: TObject);
    procedure edtCpfCnpjChange(Sender: TObject);
    procedure edtRgIeEnter(Sender: TObject);
    procedure edtRgIeExit(Sender: TObject);
    procedure edtRgIeChange(Sender: TObject);
    procedure edtApelidoFantasiaEnter(Sender: TObject);
    procedure edtApelidoFantasiaExit(Sender: TObject);
    procedure edtApelidoFantasiaChange(Sender: TObject);
    procedure cbbTipoPessoaChange(Sender: TObject);
    procedure edtCepChange(Sender: TObject);
    procedure edtCepEnter(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure edtLogradouroChange(Sender: TObject);
    procedure edtLogradouroEnter(Sender: TObject);
    procedure edtLogradouroExit(Sender: TObject);
    procedure edtNumeroExit(Sender: TObject);
    procedure edtNumeroEnter(Sender: TObject);
    procedure edtNumeroChange(Sender: TObject);
    procedure edtComplementoChange(Sender: TObject);
    procedure edtComplementoEnter(Sender: TObject);
    procedure edtComplementoExit(Sender: TObject);
    procedure edtBairroChange(Sender: TObject);
    procedure edtBairroEnter(Sender: TObject);
    procedure edtBairroExit(Sender: TObject);
    procedure edtCidadeChange(Sender: TObject);
    procedure edtCidadeEnter(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
    procedure edtContatoChange(Sender: TObject);
    procedure edtContatoEnter(Sender: TObject);
    procedure edtContatoExit(Sender: TObject);
    procedure edtEmailChange(Sender: TObject);
    procedure edtEmailEnter(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtFoneComercialChange(Sender: TObject);
    procedure edtFoneComercialEnter(Sender: TObject);
    procedure edtFoneComercialExit(Sender: TObject);
    procedure edtFoneResidencialChange(Sender: TObject);
    procedure edtFoneResidencialEnter(Sender: TObject);
    procedure edtFoneResidencialExit(Sender: TObject);
    procedure edtCelularChange(Sender: TObject);
    procedure edtCelularEnter(Sender: TObject);
    procedure edtCelularExit(Sender: TObject);
    procedure edtContatoObservacaoChange(Sender: TObject);
    procedure edtContatoObservacaoEnter(Sender: TObject);
    procedure edtContatoObservacaoExit(Sender: TObject);
    procedure pnlNovoEnderecoClick(Sender: TObject);
    procedure dsEnderecosStateChange(Sender: TObject);
  private
    FViewModel : iViewModelPessoa;
    FID : Integer;
    procedure HideShape(aValueMenu, aValueClicado : TPanel);
  public
    destructor Destroy; override;
    procedure InsertEditCustomer(aValue : Integer);
  end;

var
  frmEditCliente: TfrmEditCliente;

implementation
uses
  Simplex.ViewModel.Pessoa;

{$R *.dfm}

procedure TfrmEditCliente.pnlBasicoClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardBasico;
  HideShape(pnlMenu, pnlBasico);
end;

procedure TfrmEditCliente.pnlCancelarClick(Sender: TObject);
begin
  FViewModel.Cancelar;
  inherited;
end;

procedure TfrmEditCliente.pnlContatosClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardContatos;
  HideShape(pnlMenu, pnlContatos);
end;

procedure TfrmEditCliente.pnlEnderecosClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardEnderecos;
  HideShape(pnlMenu, pnlEnderecos);
end;

procedure TfrmEditCliente.pnlNovoEnderecoClick(Sender: TObject);
begin
  pnlSalvarClick(Self);
  FViewModel.InserirEndereco;
end;

procedure TfrmEditCliente.pnlSalvarClick(Sender: TObject);
begin
  inherited;
  dsPessoa.OnDataChange      := nil;
  dsContatos.OnDataChange    := nil;
  dsEnderecos.OnDataChange   := nil;

  FViewModel.EditarPessoa;
  dsPessoa.DataSet.FieldByName('NOMERAZAO').AsString          := edtNomeRazao.Text;
  dsPessoa.DataSet.FieldByName('APELIDOFANTASIA').AsString    := edtApelidoFantasia.Text;
  dsPessoa.DataSet.FieldByName('CPFCNPJ').AsString            := edtCpfCnpj.Text;
  dsPessoa.DataSet.FieldByName('RGIE').AsString               := edtRgIe.Text;
  dsPessoa.DataSet.FieldByName('FISICAJURIDICA').AsString     := cbbTipoPessoa.Text;
  dsEnderecos.DataSet.FieldByName('LOGRADOURO').AsString      := edtLogradouro.Text;
  dsEnderecos.DataSet.FieldByName('BAIRRO').AsString          := edtBairro.Text;
  dsEnderecos.DataSet.FieldByName('CIDADE').AsString          := edtCidade.Text;
  dsEnderecos.DataSet.FieldByName('NUMERO').AsString          := edtNumero.Text;
  dsEnderecos.DataSet.FieldByName('CEP').AsString             := edtCep.Text;
  dsEnderecos.DataSet.FieldByName('COMPLEMENTO').AsString     := edtComplemento.Text;
  dsContatos.DataSet.FieldByName('CONTATO').AsString          := edtContato.Text;
  dsContatos.DataSet.FieldByName('EMAIL').AsString            := edtEmail.Text;
  dsContatos.DataSet.FieldByName('FONECOMERCIAL').AsString    := edtFoneComercial.Text;
  dsContatos.DataSet.FieldByName('FONERESIDENCIAL').AsString  := edtFoneResidencial.Text;
  dsContatos.DataSet.FieldByName('FONECELULAR').AsString      := edtCelular.Text;
//  edtContatoObservacao.Text := dsContatos.DataSet.FieldByName('').AsString;
  FViewModel.SalvarPessoa;

  dsPessoa.OnDataChange      := dsPessoaDataChange;
  dsContatos.OnDataChange    := dsContatosDataChange;
  dsEnderecos.OnDataChange   := dsEnderecosDataChange;
end;

procedure TfrmEditCliente.cardMainCardChange(Sender: TObject; PrevCard, NextCard: TCard);
begin
  inherited;
  if Assigned(dsPessoa.DataSet) then pnlSalvarClick(Self);
end;

procedure TfrmEditCliente.cbbTipoPessoaChange(Sender: TObject);
begin
  edtCPFCNPJ.Clear;
  if cbbTipoPessoa.Text = 'Física' then edtCPFCNPJ.EditMask := '000.000.000-00;1;' else edtCPFCNPJ.EditMask := '00.000.000/0000-00;1;'
end;

destructor TfrmEditCliente.Destroy;
begin
  inherited;
end;

procedure TfrmEditCliente.dsEnderecosDataChange(Sender: TObject; Field: TField);
begin
  edtLogradouro.Text  := dsEnderecos.DataSet.FieldByName('LOGRADOURO').AsString;
  edtBairro.Text      := dsEnderecos.DataSet.FieldByName('BAIRRO').AsString;
  edtCidade.Text      := dsEnderecos.DataSet.FieldByName('CIDADE').AsString;
  edtNumero.Text      := dsEnderecos.DataSet.FieldByName('NUMERO').AsString;
  edtCep.Text         := dsEnderecos.DataSet.FieldByName('CEP').AsString;
  edtComplemento.Text := dsEnderecos.DataSet.FieldByName('COMPLEMENTO').AsString;
end;

procedure TfrmEditCliente.dsEnderecosStateChange(Sender: TObject);
begin
  FViewModel.StatusPanel(dsEnderecos, pnlCancelar).StatusPanel(dsEnderecos, pnlSalvar);
end;

procedure TfrmEditCliente.dsContatosDataChange(Sender: TObject; Field: TField);
begin
  edtContato.Text           := dsContatos.DataSet.FieldByName('CONTATO').AsString;
  edtEmail.Text             := dsContatos.DataSet.FieldByName('EMAIL').AsString;
  edtFoneComercial.Text     := dsContatos.DataSet.FieldByName('FONECOMERCIAL').AsString;
  edtFoneResidencial.Text   := dsContatos.DataSet.FieldByName('FONERESIDENCIAL').AsString;
  edtCelular.Text           := dsContatos.DataSet.FieldByName('FONECELULAR').AsString;
//  edtContatoObservacao.Text := dsContatos.DataSet.FieldByName('').AsString;
end;

procedure TfrmEditCliente.dsPessoaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edtNomeRazao.Text         := dsPessoa.DataSet.FieldByName('NOMERAZAO').AsString;
  edtApelidoFantasia.Text   := dsPessoa.DataSet.FieldByName('APELIDOFANTASIA').AsString;
  edtCpfCnpj.Text           := dsPessoa.DataSet.FieldByName('CPFCNPJ').AsString;
  edtRgIe.Text              := dsPessoa.DataSet.FieldByName('RGIE').AsString;
  cbbTipoPessoa.ItemIndex   := dsPessoa.DataSet.FieldByName('FISICAJURIDICA').AsInteger;
  if cbbTipoPessoa.Text = 'Física' then edtCPFCNPJ.EditMask := '000.000.000-00;1;' else edtCPFCNPJ.EditMask := '00.000.000/0000-00;1;'
end;

procedure TfrmEditCliente.edtCelularChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCelular, lblCelular);
end;

procedure TfrmEditCliente.edtCelularEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCelular, lblCelular);
end;

procedure TfrmEditCliente.edtCelularExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCelular, lblCelular);
end;

procedure TfrmEditCliente.edtCepChange(Sender: TObject);
begin
//  FViewModel.MostrarOcultarTituloEdit(edtCep, lblCep);
//  if TAureliusDataSet(dsEnderecos.DataSet).ModifiedFields<'dsd'> = 'sas' then
//    ShowMessage('Mudou');
end;

procedure TfrmEditCliente.edtCepEnter(Sender: TObject);
begin
//  FViewModel.MostrarOcultarTituloEdit(edtCep, lblCep);
end;

procedure TfrmEditCliente.edtCepExit(Sender: TObject);
begin
//  FViewModel.MostrarOcultarTituloEdit(edtCep, lblCep);
end;

procedure TfrmEditCliente.edtCidadeChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCidade, lblCidade);
end;

procedure TfrmEditCliente.edtCidadeEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCidade, lblCidade);
end;

procedure TfrmEditCliente.edtCidadeExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCidade, lblCidade);
end;

procedure TfrmEditCliente.edtComplementoChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtComplemento, lblComplemento);
end;

procedure TfrmEditCliente.edtComplementoEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtComplemento, lblComplemento);
end;

procedure TfrmEditCliente.edtComplementoExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtComplemento, lblComplemento);
end;

procedure TfrmEditCliente.edtContatoChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContato, lblContato);
end;

procedure TfrmEditCliente.edtContatoEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContato, lblContato);
end;

procedure TfrmEditCliente.edtContatoExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContato, lblContato);
end;

procedure TfrmEditCliente.edtContatoObservacaoChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContatoObservacao, lblContatoObservacao);
end;

procedure TfrmEditCliente.edtContatoObservacaoEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContatoObservacao, lblContatoObservacao);
end;

procedure TfrmEditCliente.edtContatoObservacaoExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtContatoObservacao, lblContatoObservacao);
end;

procedure TfrmEditCliente.edtApelidoFantasiaChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtApelidoFantasia, lblApelidoFantasia);
end;

procedure TfrmEditCliente.edtApelidoFantasiaEnter(Sender: TObject);
begin
  inherited;
  FViewModel.MostrarOcultarTituloEdit(edtApelidoFantasia, lblApelidoFantasia);
end;

procedure TfrmEditCliente.edtApelidoFantasiaExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtApelidoFantasia, lblApelidoFantasia);
end;

procedure TfrmEditCliente.edtBairroChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtBairro, lblBairro);
end;

procedure TfrmEditCliente.edtBairroEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtBairro, lblBairro);
end;

procedure TfrmEditCliente.edtBairroExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtBairro, lblBairro);
end;

procedure TfrmEditCliente.edtCpfCnpjChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCpfCnpj, lblCPFCNPJ);
end;

procedure TfrmEditCliente.edtCpfCnpjEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCpfCnpj, lblCPFCNPJ);
end;

procedure TfrmEditCliente.edtCpfCnpjExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtCpfCnpj, lblCPFCNPJ);
end;

procedure TfrmEditCliente.edtEmailChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtEmail, lblEmail);
end;

procedure TfrmEditCliente.edtEmailEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtEmail, lblEmail);
end;

procedure TfrmEditCliente.edtEmailExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtEmail, lblEmail);
end;

procedure TfrmEditCliente.edtFoneComercialChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneComercial, lblFoneComercial);
end;

procedure TfrmEditCliente.edtFoneComercialEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneComercial, lblFoneComercial);
end;

procedure TfrmEditCliente.edtFoneComercialExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneComercial, lblFoneComercial);
end;

procedure TfrmEditCliente.edtFoneResidencialChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneResidencial, lblFoneResidencial);
end;

procedure TfrmEditCliente.edtFoneResidencialEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneResidencial, lblFoneResidencial);
end;

procedure TfrmEditCliente.edtFoneResidencialExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtFoneResidencial, lblFoneResidencial);
end;

procedure TfrmEditCliente.edtLogradouroChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtLogradouro, lblLogradouro);

end;

procedure TfrmEditCliente.edtLogradouroEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtLogradouro, lblLogradouro);
end;

procedure TfrmEditCliente.edtLogradouroExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtLogradouro, lblLogradouro);
end;

procedure TfrmEditCliente.edtNomeRazaoChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNomeRazao, lblNomeRazao);
end;

procedure TfrmEditCliente.edtNomeRazaoEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNomeRazao, lblNomeRazao);
end;

procedure TfrmEditCliente.edtNomeRazaoExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNomeRazao, lblNomeRazao);
end;

procedure TfrmEditCliente.edtNumeroChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNumero, lblNumero);
end;

procedure TfrmEditCliente.edtNumeroEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNumero, lblNumero);
end;

procedure TfrmEditCliente.edtNumeroExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtNumero, lblNumero);
end;

procedure TfrmEditCliente.edtRgIeChange(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtRgIe, lblRGIE);
end;

procedure TfrmEditCliente.edtRgIeEnter(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtRgIe, lblRGIE);
end;

procedure TfrmEditCliente.edtRgIeExit(Sender: TObject);
begin
  FViewModel.MostrarOcultarTituloEdit(edtRgIe, lblRGIE);
end;

procedure TfrmEditCliente.FormShow(Sender: TObject);
begin
  inherited;
  cardMain.ActiveCard := cardBasico;
end;

procedure TfrmEditCliente.InsertEditCustomer(aValue: Integer);
begin
  FID := aValue;
  FViewModel := TViewModelPessoa.New;
  FViewModel
    .DataSet(dsPessoa)
    .DataSetContatos(dsContatos)
    .DataSetEnderecos(dsEnderecos)
    .Open(FID)
//  .EditarPessoa;
end;

{Colocar isso em ViewModel}
procedure TfrmEditCliente.HideShape(aValueMenu, aValueClicado : TPanel);
begin
  for var contadorMenu : integer := 0 to Pred(aValueMenu.ControlCount) do
  begin
    if aValueMenu.Controls[contadorMenu] is TPanel then
    begin
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Size  := 8;
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Style := [];
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Color := clSilver;
    end;
  end;

  aValueClicado.Font.Size   := 12;
  aValueClicado.Font.Style  := [TFontStyle.fsBold, TFontStyle.fsUnderline];
  aValueClicado.Font.Color  := clGray;

end;

end.
