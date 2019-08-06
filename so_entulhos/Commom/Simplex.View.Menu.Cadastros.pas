unit Simplex.View.Menu.Cadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Generics.Collections, Simplex.View.Menu.Frame;

type
  TfrmMenuCadastros = class(TForm)
    pnlMain: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    ScrollBox: TScrollBox;
    pnlTela: TPanel;
    lblHora: TLabel;
    lblData: TLabel;
    lblCidade: TLabel;
    Timer: TTimer;
    pnlFechar: TPanel;
    lblFechar: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure pnlFecharClick(Sender: TObject);
  private
    ItemLista : TObjectList<TFrameMenu>;
  public
    { Public declarations }
  end;

var
  frmMenuCadastros: TfrmMenuCadastros;

implementation

uses
  Simplex.View.Clientes;
//uses
//  Simplex.View.Cadastro.Cliente;

{$R *.dfm}

procedure TfrmMenuCadastros.FormCreate(Sender: TObject);
begin
  ItemLista := TObjectList<TFrameMenu>.Create;
  lblData.Caption := formatdatetime('dd "de" MMMM "de" yyyy',now);
end;

procedure TfrmMenuCadastros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ItemLista);
end;

procedure TfrmMenuCadastros.FormShow(Sender: TObject);
var
  Item1 {, Item2, Item3, Item4, Item5, Item6} : TFrameMenu;
  I: Integer;
begin
  Item1 := TFrameMenu.Create(nil);
  Item1.Align := alTop;
  Item1.PanelInjection('Cliente', TfrmClientes, pnlTela);
  Item1.lblTituloMenu.Caption := 'Clientes';
  Item1.lblDescricao.Caption  := 'Cadastro de Clientes';
  ItemLista.Add(Item1);

//  Item2 := TFrameMenu.Create(nil);
//  Item2.Align := alTop;
//  Item2.PanelInjection('Produto', TfrmCadastroCliente, pnlTela);
//  Item2.lblTituloMenu.Caption := 'Produtos';
//  Item2.lblDescricao.Caption  := 'Cadastro de produtos';
//  ItemLista.Add(Item2);
//
//  Item3 := TFrameMenu.Create(nil);
//  Item3.Align := alTop;
//  Item3.PanelInjection('Cliente', TfrmCadastroCliente, pnlTela);
//  Item3.lblTituloMenu.Caption := 'Clientes';
//  Item3.lblDescricao.Caption  := 'Cadastro de clientes';
//  ItemLista.Add(Item3);
//
//  Item4 := TFrameMenu.Create(nil);
//  Item4.Align := alTop;
//  Item4.PanelInjection('Usuario', TfrmCadastroCliente, pnlTela);
//  Item4.lblTituloMenu.Caption := 'Cidades';
//  Item4.lblDescricao.Caption  := 'Cadastro de cidades';
//  ItemLista.Add(Item4);
//
//  Item5 := TFrameMenu.Create(nil);
//  Item5.Align := alTop;
//  Item5.PanelInjection('Produto', TfrmBase, pnlTela);
//  Item5.lblTituloMenu.Caption := 'Colaboradores';
//  Item5.lblDescricao.Caption  := 'Cadastro de funcionários';
//  ItemLista.Add(Item5);

  for I := 0 to Pred(ItemLista.Count) do
    ItemLista[I].Parent := ScrollBox;

end;

procedure TfrmMenuCadastros.pnlFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenuCadastros.TimerTimer(Sender: TObject);
begin
  lblHora.Caption := FormatDateTime('hh:mm', now);
end;

end.
